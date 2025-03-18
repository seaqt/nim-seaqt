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


{.compile("gen_qtabbar.cpp", QtWidgetsCFlags).}


type QTabBarShapeEnum* = distinct cint
template RoundedNorth*(_: type QTabBarShapeEnum): untyped = 0
template RoundedSouth*(_: type QTabBarShapeEnum): untyped = 1
template RoundedWest*(_: type QTabBarShapeEnum): untyped = 2
template RoundedEast*(_: type QTabBarShapeEnum): untyped = 3
template TriangularNorth*(_: type QTabBarShapeEnum): untyped = 4
template TriangularSouth*(_: type QTabBarShapeEnum): untyped = 5
template TriangularWest*(_: type QTabBarShapeEnum): untyped = 6
template TriangularEast*(_: type QTabBarShapeEnum): untyped = 7


type QTabBarButtonPositionEnum* = distinct cint
template LeftSide*(_: type QTabBarButtonPositionEnum): untyped = 0
template RightSide*(_: type QTabBarButtonPositionEnum): untyped = 1


type QTabBarSelectionBehaviorEnum* = distinct cint
template SelectLeftTab*(_: type QTabBarSelectionBehaviorEnum): untyped = 0
template SelectRightTab*(_: type QTabBarSelectionBehaviorEnum): untyped = 1
template SelectPreviousTab*(_: type QTabBarSelectionBehaviorEnum): untyped = 2


import ./gen_qtabbar_types
export gen_qtabbar_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qcolor_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qicon_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ./gen_qstyleoption_types,
  ./gen_qwidget
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qcolor_types,
  gen_qevent_types,
  gen_qicon_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qstyleoption_types,
  gen_qwidget

type cQTabBar*{.exportc: "QTabBar", incompleteStruct.} = object

proc fcQTabBar_metaObject(self: pointer): pointer {.importc: "QTabBar_metaObject".}
proc fcQTabBar_metacast(self: pointer, param1: cstring): pointer {.importc: "QTabBar_metacast".}
proc fcQTabBar_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTabBar_metacall".}
proc fcQTabBar_tr(s: cstring): struct_miqt_string {.importc: "QTabBar_tr".}
proc fcQTabBar_trUtf8(s: cstring): struct_miqt_string {.importc: "QTabBar_trUtf8".}
proc fcQTabBar_shape(self: pointer): cint {.importc: "QTabBar_shape".}
proc fcQTabBar_setShape(self: pointer, shape: cint): void {.importc: "QTabBar_setShape".}
proc fcQTabBar_addTab(self: pointer, text: struct_miqt_string): cint {.importc: "QTabBar_addTab".}
proc fcQTabBar_addTab2(self: pointer, icon: pointer, text: struct_miqt_string): cint {.importc: "QTabBar_addTab2".}
proc fcQTabBar_insertTab(self: pointer, index: cint, text: struct_miqt_string): cint {.importc: "QTabBar_insertTab".}
proc fcQTabBar_insertTab2(self: pointer, index: cint, icon: pointer, text: struct_miqt_string): cint {.importc: "QTabBar_insertTab2".}
proc fcQTabBar_removeTab(self: pointer, index: cint): void {.importc: "QTabBar_removeTab".}
proc fcQTabBar_moveTab(self: pointer, fromVal: cint, to: cint): void {.importc: "QTabBar_moveTab".}
proc fcQTabBar_isTabEnabled(self: pointer, index: cint): bool {.importc: "QTabBar_isTabEnabled".}
proc fcQTabBar_setTabEnabled(self: pointer, index: cint, enabled: bool): void {.importc: "QTabBar_setTabEnabled".}
proc fcQTabBar_isTabVisible(self: pointer, index: cint): bool {.importc: "QTabBar_isTabVisible".}
proc fcQTabBar_setTabVisible(self: pointer, index: cint, visible: bool): void {.importc: "QTabBar_setTabVisible".}
proc fcQTabBar_tabText(self: pointer, index: cint): struct_miqt_string {.importc: "QTabBar_tabText".}
proc fcQTabBar_setTabText(self: pointer, index: cint, text: struct_miqt_string): void {.importc: "QTabBar_setTabText".}
proc fcQTabBar_tabTextColor(self: pointer, index: cint): pointer {.importc: "QTabBar_tabTextColor".}
proc fcQTabBar_setTabTextColor(self: pointer, index: cint, color: pointer): void {.importc: "QTabBar_setTabTextColor".}
proc fcQTabBar_tabIcon(self: pointer, index: cint): pointer {.importc: "QTabBar_tabIcon".}
proc fcQTabBar_setTabIcon(self: pointer, index: cint, icon: pointer): void {.importc: "QTabBar_setTabIcon".}
proc fcQTabBar_elideMode(self: pointer): cint {.importc: "QTabBar_elideMode".}
proc fcQTabBar_setElideMode(self: pointer, mode: cint): void {.importc: "QTabBar_setElideMode".}
proc fcQTabBar_setTabToolTip(self: pointer, index: cint, tip: struct_miqt_string): void {.importc: "QTabBar_setTabToolTip".}
proc fcQTabBar_tabToolTip(self: pointer, index: cint): struct_miqt_string {.importc: "QTabBar_tabToolTip".}
proc fcQTabBar_setTabWhatsThis(self: pointer, index: cint, text: struct_miqt_string): void {.importc: "QTabBar_setTabWhatsThis".}
proc fcQTabBar_tabWhatsThis(self: pointer, index: cint): struct_miqt_string {.importc: "QTabBar_tabWhatsThis".}
proc fcQTabBar_setTabData(self: pointer, index: cint, data: pointer): void {.importc: "QTabBar_setTabData".}
proc fcQTabBar_tabData(self: pointer, index: cint): pointer {.importc: "QTabBar_tabData".}
proc fcQTabBar_tabRect(self: pointer, index: cint): pointer {.importc: "QTabBar_tabRect".}
proc fcQTabBar_tabAt(self: pointer, pos: pointer): cint {.importc: "QTabBar_tabAt".}
proc fcQTabBar_currentIndex(self: pointer): cint {.importc: "QTabBar_currentIndex".}
proc fcQTabBar_count(self: pointer): cint {.importc: "QTabBar_count".}
proc fcQTabBar_sizeHint(self: pointer): pointer {.importc: "QTabBar_sizeHint".}
proc fcQTabBar_minimumSizeHint(self: pointer): pointer {.importc: "QTabBar_minimumSizeHint".}
proc fcQTabBar_setDrawBase(self: pointer, drawTheBase: bool): void {.importc: "QTabBar_setDrawBase".}
proc fcQTabBar_drawBase(self: pointer): bool {.importc: "QTabBar_drawBase".}
proc fcQTabBar_iconSize(self: pointer): pointer {.importc: "QTabBar_iconSize".}
proc fcQTabBar_setIconSize(self: pointer, size: pointer): void {.importc: "QTabBar_setIconSize".}
proc fcQTabBar_usesScrollButtons(self: pointer): bool {.importc: "QTabBar_usesScrollButtons".}
proc fcQTabBar_setUsesScrollButtons(self: pointer, useButtons: bool): void {.importc: "QTabBar_setUsesScrollButtons".}
proc fcQTabBar_tabsClosable(self: pointer): bool {.importc: "QTabBar_tabsClosable".}
proc fcQTabBar_setTabsClosable(self: pointer, closable: bool): void {.importc: "QTabBar_setTabsClosable".}
proc fcQTabBar_setTabButton(self: pointer, index: cint, position: cint, widget: pointer): void {.importc: "QTabBar_setTabButton".}
proc fcQTabBar_tabButton(self: pointer, index: cint, position: cint): pointer {.importc: "QTabBar_tabButton".}
proc fcQTabBar_selectionBehaviorOnRemove(self: pointer): cint {.importc: "QTabBar_selectionBehaviorOnRemove".}
proc fcQTabBar_setSelectionBehaviorOnRemove(self: pointer, behavior: cint): void {.importc: "QTabBar_setSelectionBehaviorOnRemove".}
proc fcQTabBar_expanding(self: pointer): bool {.importc: "QTabBar_expanding".}
proc fcQTabBar_setExpanding(self: pointer, enabled: bool): void {.importc: "QTabBar_setExpanding".}
proc fcQTabBar_isMovable(self: pointer): bool {.importc: "QTabBar_isMovable".}
proc fcQTabBar_setMovable(self: pointer, movable: bool): void {.importc: "QTabBar_setMovable".}
proc fcQTabBar_documentMode(self: pointer): bool {.importc: "QTabBar_documentMode".}
proc fcQTabBar_setDocumentMode(self: pointer, set: bool): void {.importc: "QTabBar_setDocumentMode".}
proc fcQTabBar_autoHide(self: pointer): bool {.importc: "QTabBar_autoHide".}
proc fcQTabBar_setAutoHide(self: pointer, hide: bool): void {.importc: "QTabBar_setAutoHide".}
proc fcQTabBar_changeCurrentOnDrag(self: pointer): bool {.importc: "QTabBar_changeCurrentOnDrag".}
proc fcQTabBar_setChangeCurrentOnDrag(self: pointer, change: bool): void {.importc: "QTabBar_setChangeCurrentOnDrag".}
proc fcQTabBar_accessibleTabName(self: pointer, index: cint): struct_miqt_string {.importc: "QTabBar_accessibleTabName".}
proc fcQTabBar_setAccessibleTabName(self: pointer, index: cint, name: struct_miqt_string): void {.importc: "QTabBar_setAccessibleTabName".}
proc fcQTabBar_setCurrentIndex(self: pointer, index: cint): void {.importc: "QTabBar_setCurrentIndex".}
proc fcQTabBar_currentChanged(self: pointer, index: cint): void {.importc: "QTabBar_currentChanged".}
proc fcQTabBar_connect_currentChanged(self: pointer, slot: int, callback: proc (slot: int, index: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTabBar_connect_currentChanged".}
proc fcQTabBar_tabCloseRequested(self: pointer, index: cint): void {.importc: "QTabBar_tabCloseRequested".}
proc fcQTabBar_connect_tabCloseRequested(self: pointer, slot: int, callback: proc (slot: int, index: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTabBar_connect_tabCloseRequested".}
proc fcQTabBar_tabMoved(self: pointer, fromVal: cint, to: cint): void {.importc: "QTabBar_tabMoved".}
proc fcQTabBar_connect_tabMoved(self: pointer, slot: int, callback: proc (slot: int, fromVal: cint, to: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTabBar_connect_tabMoved".}
proc fcQTabBar_tabBarClicked(self: pointer, index: cint): void {.importc: "QTabBar_tabBarClicked".}
proc fcQTabBar_connect_tabBarClicked(self: pointer, slot: int, callback: proc (slot: int, index: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTabBar_connect_tabBarClicked".}
proc fcQTabBar_tabBarDoubleClicked(self: pointer, index: cint): void {.importc: "QTabBar_tabBarDoubleClicked".}
proc fcQTabBar_connect_tabBarDoubleClicked(self: pointer, slot: int, callback: proc (slot: int, index: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTabBar_connect_tabBarDoubleClicked".}
proc fcQTabBar_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTabBar_tr2".}
proc fcQTabBar_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTabBar_tr3".}
proc fcQTabBar_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTabBar_trUtf82".}
proc fcQTabBar_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTabBar_trUtf83".}
proc fcQTabBar_vtbl(self: pointer): pointer {.importc: "QTabBar_vtbl".}
proc fcQTabBar_vdata(self: pointer): pointer {.importc: "QTabBar_vdata".}

type cQTabBarVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  tabSizeHint*: proc(self: pointer, index: cint): pointer {.cdecl, raises: [], gcsafe.}
  minimumTabSizeHint*: proc(self: pointer, index: cint): pointer {.cdecl, raises: [], gcsafe.}
  tabInserted*: proc(self: pointer, index: cint): void {.cdecl, raises: [], gcsafe.}
  tabRemoved*: proc(self: pointer, index: cint): void {.cdecl, raises: [], gcsafe.}
  tabLayoutChange*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQTabBar_virtualbase_metaObject(self: pointer): pointer {.importc: "QTabBar_virtualbase_metaObject".}
proc fcQTabBar_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTabBar_virtualbase_metacast".}
proc fcQTabBar_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTabBar_virtualbase_metacall".}
proc fcQTabBar_virtualbase_sizeHint(self: pointer): pointer {.importc: "QTabBar_virtualbase_sizeHint".}
proc fcQTabBar_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QTabBar_virtualbase_minimumSizeHint".}
proc fcQTabBar_virtualbase_tabSizeHint(self: pointer, index: cint): pointer {.importc: "QTabBar_virtualbase_tabSizeHint".}
proc fcQTabBar_virtualbase_minimumTabSizeHint(self: pointer, index: cint): pointer {.importc: "QTabBar_virtualbase_minimumTabSizeHint".}
proc fcQTabBar_virtualbase_tabInserted(self: pointer, index: cint): void {.importc: "QTabBar_virtualbase_tabInserted".}
proc fcQTabBar_virtualbase_tabRemoved(self: pointer, index: cint): void {.importc: "QTabBar_virtualbase_tabRemoved".}
proc fcQTabBar_virtualbase_tabLayoutChange(self: pointer): void {.importc: "QTabBar_virtualbase_tabLayoutChange".}
proc fcQTabBar_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QTabBar_virtualbase_event".}
proc fcQTabBar_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QTabBar_virtualbase_resizeEvent".}
proc fcQTabBar_virtualbase_showEvent(self: pointer, param1: pointer): void {.importc: "QTabBar_virtualbase_showEvent".}
proc fcQTabBar_virtualbase_hideEvent(self: pointer, param1: pointer): void {.importc: "QTabBar_virtualbase_hideEvent".}
proc fcQTabBar_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QTabBar_virtualbase_paintEvent".}
proc fcQTabBar_virtualbase_mousePressEvent(self: pointer, param1: pointer): void {.importc: "QTabBar_virtualbase_mousePressEvent".}
proc fcQTabBar_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void {.importc: "QTabBar_virtualbase_mouseMoveEvent".}
proc fcQTabBar_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void {.importc: "QTabBar_virtualbase_mouseReleaseEvent".}
proc fcQTabBar_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QTabBar_virtualbase_wheelEvent".}
proc fcQTabBar_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QTabBar_virtualbase_keyPressEvent".}
proc fcQTabBar_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QTabBar_virtualbase_changeEvent".}
proc fcQTabBar_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QTabBar_virtualbase_timerEvent".}
proc fcQTabBar_virtualbase_devType(self: pointer): cint {.importc: "QTabBar_virtualbase_devType".}
proc fcQTabBar_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QTabBar_virtualbase_setVisible".}
proc fcQTabBar_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QTabBar_virtualbase_heightForWidth".}
proc fcQTabBar_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QTabBar_virtualbase_hasHeightForWidth".}
proc fcQTabBar_virtualbase_paintEngine(self: pointer): pointer {.importc: "QTabBar_virtualbase_paintEngine".}
proc fcQTabBar_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QTabBar_virtualbase_mouseDoubleClickEvent".}
proc fcQTabBar_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QTabBar_virtualbase_keyReleaseEvent".}
proc fcQTabBar_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QTabBar_virtualbase_focusInEvent".}
proc fcQTabBar_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QTabBar_virtualbase_focusOutEvent".}
proc fcQTabBar_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QTabBar_virtualbase_enterEvent".}
proc fcQTabBar_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QTabBar_virtualbase_leaveEvent".}
proc fcQTabBar_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QTabBar_virtualbase_moveEvent".}
proc fcQTabBar_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QTabBar_virtualbase_closeEvent".}
proc fcQTabBar_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QTabBar_virtualbase_contextMenuEvent".}
proc fcQTabBar_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QTabBar_virtualbase_tabletEvent".}
proc fcQTabBar_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QTabBar_virtualbase_actionEvent".}
proc fcQTabBar_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QTabBar_virtualbase_dragEnterEvent".}
proc fcQTabBar_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QTabBar_virtualbase_dragMoveEvent".}
proc fcQTabBar_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QTabBar_virtualbase_dragLeaveEvent".}
proc fcQTabBar_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QTabBar_virtualbase_dropEvent".}
proc fcQTabBar_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QTabBar_virtualbase_nativeEvent".}
proc fcQTabBar_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QTabBar_virtualbase_metric".}
proc fcQTabBar_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QTabBar_virtualbase_initPainter".}
proc fcQTabBar_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QTabBar_virtualbase_redirected".}
proc fcQTabBar_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QTabBar_virtualbase_sharedPainter".}
proc fcQTabBar_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QTabBar_virtualbase_inputMethodEvent".}
proc fcQTabBar_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QTabBar_virtualbase_inputMethodQuery".}
proc fcQTabBar_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QTabBar_virtualbase_focusNextPrevChild".}
proc fcQTabBar_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QTabBar_virtualbase_eventFilter".}
proc fcQTabBar_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QTabBar_virtualbase_childEvent".}
proc fcQTabBar_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QTabBar_virtualbase_customEvent".}
proc fcQTabBar_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QTabBar_virtualbase_connectNotify".}
proc fcQTabBar_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QTabBar_virtualbase_disconnectNotify".}
proc fcQTabBar_protectedbase_initStyleOption(self: pointer, option: pointer, tabIndex: cint): void {.importc: "QTabBar_protectedbase_initStyleOption".}
proc fcQTabBar_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QTabBar_protectedbase_updateMicroFocus".}
proc fcQTabBar_protectedbase_create(self: pointer): void {.importc: "QTabBar_protectedbase_create".}
proc fcQTabBar_protectedbase_destroy(self: pointer): void {.importc: "QTabBar_protectedbase_destroy".}
proc fcQTabBar_protectedbase_focusNextChild(self: pointer): bool {.importc: "QTabBar_protectedbase_focusNextChild".}
proc fcQTabBar_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QTabBar_protectedbase_focusPreviousChild".}
proc fcQTabBar_protectedbase_sender(self: pointer): pointer {.importc: "QTabBar_protectedbase_sender".}
proc fcQTabBar_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QTabBar_protectedbase_senderSignalIndex".}
proc fcQTabBar_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QTabBar_protectedbase_receivers".}
proc fcQTabBar_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QTabBar_protectedbase_isSignalConnected".}
proc fcQTabBar_new(vtbl, vdata: pointer, parent: pointer): ptr cQTabBar {.importc: "QTabBar_new".}
proc fcQTabBar_new2(vtbl, vdata: pointer): ptr cQTabBar {.importc: "QTabBar_new2".}
proc fcQTabBar_staticMetaObject(): pointer {.importc: "QTabBar_staticMetaObject".}

proc metaObject*(self: gen_qtabbar_types.QTabBar): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTabBar_metaObject(self.h), owned: false)

proc metacast*(self: gen_qtabbar_types.QTabBar, param1: cstring): pointer =
  fcQTabBar_metacast(self.h, param1)

proc metacall*(self: gen_qtabbar_types.QTabBar, param1: cint, param2: cint, param3: pointer): cint =
  fcQTabBar_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtabbar_types.QTabBar, s: cstring): string =
  let v_ms = fcQTabBar_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtabbar_types.QTabBar, s: cstring): string =
  let v_ms = fcQTabBar_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc shape*(self: gen_qtabbar_types.QTabBar): cint =
  cint(fcQTabBar_shape(self.h))

proc setShape*(self: gen_qtabbar_types.QTabBar, shape: cint): void =
  fcQTabBar_setShape(self.h, cint(shape))

proc addTab*(self: gen_qtabbar_types.QTabBar, text: openArray[char]): cint =
  fcQTabBar_addTab(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc addTab*(self: gen_qtabbar_types.QTabBar, icon: gen_qicon_types.QIcon, text: openArray[char]): cint =
  fcQTabBar_addTab2(self.h, icon.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc insertTab*(self: gen_qtabbar_types.QTabBar, index: cint, text: openArray[char]): cint =
  fcQTabBar_insertTab(self.h, index, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc insertTab*(self: gen_qtabbar_types.QTabBar, index: cint, icon: gen_qicon_types.QIcon, text: openArray[char]): cint =
  fcQTabBar_insertTab2(self.h, index, icon.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc removeTab*(self: gen_qtabbar_types.QTabBar, index: cint): void =
  fcQTabBar_removeTab(self.h, index)

proc moveTab*(self: gen_qtabbar_types.QTabBar, fromVal: cint, to: cint): void =
  fcQTabBar_moveTab(self.h, fromVal, to)

proc isTabEnabled*(self: gen_qtabbar_types.QTabBar, index: cint): bool =
  fcQTabBar_isTabEnabled(self.h, index)

proc setTabEnabled*(self: gen_qtabbar_types.QTabBar, index: cint, enabled: bool): void =
  fcQTabBar_setTabEnabled(self.h, index, enabled)

proc isTabVisible*(self: gen_qtabbar_types.QTabBar, index: cint): bool =
  fcQTabBar_isTabVisible(self.h, index)

proc setTabVisible*(self: gen_qtabbar_types.QTabBar, index: cint, visible: bool): void =
  fcQTabBar_setTabVisible(self.h, index, visible)

proc tabText*(self: gen_qtabbar_types.QTabBar, index: cint): string =
  let v_ms = fcQTabBar_tabText(self.h, index)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setTabText*(self: gen_qtabbar_types.QTabBar, index: cint, text: openArray[char]): void =
  fcQTabBar_setTabText(self.h, index, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc tabTextColor*(self: gen_qtabbar_types.QTabBar, index: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQTabBar_tabTextColor(self.h, index), owned: true)

proc setTabTextColor*(self: gen_qtabbar_types.QTabBar, index: cint, color: gen_qcolor_types.QColor): void =
  fcQTabBar_setTabTextColor(self.h, index, color.h)

proc tabIcon*(self: gen_qtabbar_types.QTabBar, index: cint): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQTabBar_tabIcon(self.h, index), owned: true)

proc setTabIcon*(self: gen_qtabbar_types.QTabBar, index: cint, icon: gen_qicon_types.QIcon): void =
  fcQTabBar_setTabIcon(self.h, index, icon.h)

proc elideMode*(self: gen_qtabbar_types.QTabBar): cint =
  cint(fcQTabBar_elideMode(self.h))

proc setElideMode*(self: gen_qtabbar_types.QTabBar, mode: cint): void =
  fcQTabBar_setElideMode(self.h, cint(mode))

proc setTabToolTip*(self: gen_qtabbar_types.QTabBar, index: cint, tip: openArray[char]): void =
  fcQTabBar_setTabToolTip(self.h, index, struct_miqt_string(data: if len(tip) > 0: addr tip[0] else: nil, len: csize_t(len(tip))))

proc tabToolTip*(self: gen_qtabbar_types.QTabBar, index: cint): string =
  let v_ms = fcQTabBar_tabToolTip(self.h, index)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setTabWhatsThis*(self: gen_qtabbar_types.QTabBar, index: cint, text: openArray[char]): void =
  fcQTabBar_setTabWhatsThis(self.h, index, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc tabWhatsThis*(self: gen_qtabbar_types.QTabBar, index: cint): string =
  let v_ms = fcQTabBar_tabWhatsThis(self.h, index)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setTabData*(self: gen_qtabbar_types.QTabBar, index: cint, data: gen_qvariant_types.QVariant): void =
  fcQTabBar_setTabData(self.h, index, data.h)

proc tabData*(self: gen_qtabbar_types.QTabBar, index: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTabBar_tabData(self.h, index), owned: true)

proc tabRect*(self: gen_qtabbar_types.QTabBar, index: cint): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQTabBar_tabRect(self.h, index), owned: true)

proc tabAt*(self: gen_qtabbar_types.QTabBar, pos: gen_qpoint_types.QPoint): cint =
  fcQTabBar_tabAt(self.h, pos.h)

proc currentIndex*(self: gen_qtabbar_types.QTabBar): cint =
  fcQTabBar_currentIndex(self.h)

proc count*(self: gen_qtabbar_types.QTabBar): cint =
  fcQTabBar_count(self.h)

proc sizeHint*(self: gen_qtabbar_types.QTabBar): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTabBar_sizeHint(self.h), owned: true)

proc minimumSizeHint*(self: gen_qtabbar_types.QTabBar): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTabBar_minimumSizeHint(self.h), owned: true)

proc setDrawBase*(self: gen_qtabbar_types.QTabBar, drawTheBase: bool): void =
  fcQTabBar_setDrawBase(self.h, drawTheBase)

proc drawBase*(self: gen_qtabbar_types.QTabBar): bool =
  fcQTabBar_drawBase(self.h)

proc iconSize*(self: gen_qtabbar_types.QTabBar): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTabBar_iconSize(self.h), owned: true)

proc setIconSize*(self: gen_qtabbar_types.QTabBar, size: gen_qsize_types.QSize): void =
  fcQTabBar_setIconSize(self.h, size.h)

proc usesScrollButtons*(self: gen_qtabbar_types.QTabBar): bool =
  fcQTabBar_usesScrollButtons(self.h)

proc setUsesScrollButtons*(self: gen_qtabbar_types.QTabBar, useButtons: bool): void =
  fcQTabBar_setUsesScrollButtons(self.h, useButtons)

proc tabsClosable*(self: gen_qtabbar_types.QTabBar): bool =
  fcQTabBar_tabsClosable(self.h)

proc setTabsClosable*(self: gen_qtabbar_types.QTabBar, closable: bool): void =
  fcQTabBar_setTabsClosable(self.h, closable)

proc setTabButton*(self: gen_qtabbar_types.QTabBar, index: cint, position: cint, widget: gen_qwidget_types.QWidget): void =
  fcQTabBar_setTabButton(self.h, index, cint(position), widget.h)

proc tabButton*(self: gen_qtabbar_types.QTabBar, index: cint, position: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQTabBar_tabButton(self.h, index, cint(position)), owned: false)

proc selectionBehaviorOnRemove*(self: gen_qtabbar_types.QTabBar): cint =
  cint(fcQTabBar_selectionBehaviorOnRemove(self.h))

proc setSelectionBehaviorOnRemove*(self: gen_qtabbar_types.QTabBar, behavior: cint): void =
  fcQTabBar_setSelectionBehaviorOnRemove(self.h, cint(behavior))

proc expanding*(self: gen_qtabbar_types.QTabBar): bool =
  fcQTabBar_expanding(self.h)

proc setExpanding*(self: gen_qtabbar_types.QTabBar, enabled: bool): void =
  fcQTabBar_setExpanding(self.h, enabled)

proc isMovable*(self: gen_qtabbar_types.QTabBar): bool =
  fcQTabBar_isMovable(self.h)

proc setMovable*(self: gen_qtabbar_types.QTabBar, movable: bool): void =
  fcQTabBar_setMovable(self.h, movable)

proc documentMode*(self: gen_qtabbar_types.QTabBar): bool =
  fcQTabBar_documentMode(self.h)

proc setDocumentMode*(self: gen_qtabbar_types.QTabBar, set: bool): void =
  fcQTabBar_setDocumentMode(self.h, set)

proc autoHide*(self: gen_qtabbar_types.QTabBar): bool =
  fcQTabBar_autoHide(self.h)

proc setAutoHide*(self: gen_qtabbar_types.QTabBar, hide: bool): void =
  fcQTabBar_setAutoHide(self.h, hide)

proc changeCurrentOnDrag*(self: gen_qtabbar_types.QTabBar): bool =
  fcQTabBar_changeCurrentOnDrag(self.h)

proc setChangeCurrentOnDrag*(self: gen_qtabbar_types.QTabBar, change: bool): void =
  fcQTabBar_setChangeCurrentOnDrag(self.h, change)

proc accessibleTabName*(self: gen_qtabbar_types.QTabBar, index: cint): string =
  let v_ms = fcQTabBar_accessibleTabName(self.h, index)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setAccessibleTabName*(self: gen_qtabbar_types.QTabBar, index: cint, name: openArray[char]): void =
  fcQTabBar_setAccessibleTabName(self.h, index, struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc setCurrentIndex*(self: gen_qtabbar_types.QTabBar, index: cint): void =
  fcQTabBar_setCurrentIndex(self.h, index)

proc currentChanged*(self: gen_qtabbar_types.QTabBar, index: cint): void =
  fcQTabBar_currentChanged(self.h, index)

type QTabBarcurrentChangedSlot* = proc(index: cint)
proc fcQTabBar_slot_callback_currentChanged(slot: int, index: cint) {.cdecl.} =
  let nimfunc = cast[ptr QTabBarcurrentChangedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc fcQTabBar_slot_callback_currentChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTabBarcurrentChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCurrentChanged*(self: gen_qtabbar_types.QTabBar, slot: QTabBarcurrentChangedSlot) =
  var tmp = new QTabBarcurrentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_connect_currentChanged(self.h, cast[int](addr tmp[]), fcQTabBar_slot_callback_currentChanged, fcQTabBar_slot_callback_currentChanged_release)

proc tabCloseRequested*(self: gen_qtabbar_types.QTabBar, index: cint): void =
  fcQTabBar_tabCloseRequested(self.h, index)

type QTabBartabCloseRequestedSlot* = proc(index: cint)
proc fcQTabBar_slot_callback_tabCloseRequested(slot: int, index: cint) {.cdecl.} =
  let nimfunc = cast[ptr QTabBartabCloseRequestedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc fcQTabBar_slot_callback_tabCloseRequested_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTabBartabCloseRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onTabCloseRequested*(self: gen_qtabbar_types.QTabBar, slot: QTabBartabCloseRequestedSlot) =
  var tmp = new QTabBartabCloseRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_connect_tabCloseRequested(self.h, cast[int](addr tmp[]), fcQTabBar_slot_callback_tabCloseRequested, fcQTabBar_slot_callback_tabCloseRequested_release)

proc tabMoved*(self: gen_qtabbar_types.QTabBar, fromVal: cint, to: cint): void =
  fcQTabBar_tabMoved(self.h, fromVal, to)

type QTabBartabMovedSlot* = proc(fromVal: cint, to: cint)
proc fcQTabBar_slot_callback_tabMoved(slot: int, fromVal: cint, to: cint) {.cdecl.} =
  let nimfunc = cast[ptr QTabBartabMovedSlot](cast[pointer](slot))
  let slotval1 = fromVal

  let slotval2 = to

  nimfunc[](slotval1, slotval2)

proc fcQTabBar_slot_callback_tabMoved_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTabBartabMovedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onTabMoved*(self: gen_qtabbar_types.QTabBar, slot: QTabBartabMovedSlot) =
  var tmp = new QTabBartabMovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_connect_tabMoved(self.h, cast[int](addr tmp[]), fcQTabBar_slot_callback_tabMoved, fcQTabBar_slot_callback_tabMoved_release)

proc tabBarClicked*(self: gen_qtabbar_types.QTabBar, index: cint): void =
  fcQTabBar_tabBarClicked(self.h, index)

type QTabBartabBarClickedSlot* = proc(index: cint)
proc fcQTabBar_slot_callback_tabBarClicked(slot: int, index: cint) {.cdecl.} =
  let nimfunc = cast[ptr QTabBartabBarClickedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc fcQTabBar_slot_callback_tabBarClicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTabBartabBarClickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onTabBarClicked*(self: gen_qtabbar_types.QTabBar, slot: QTabBartabBarClickedSlot) =
  var tmp = new QTabBartabBarClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_connect_tabBarClicked(self.h, cast[int](addr tmp[]), fcQTabBar_slot_callback_tabBarClicked, fcQTabBar_slot_callback_tabBarClicked_release)

proc tabBarDoubleClicked*(self: gen_qtabbar_types.QTabBar, index: cint): void =
  fcQTabBar_tabBarDoubleClicked(self.h, index)

type QTabBartabBarDoubleClickedSlot* = proc(index: cint)
proc fcQTabBar_slot_callback_tabBarDoubleClicked(slot: int, index: cint) {.cdecl.} =
  let nimfunc = cast[ptr QTabBartabBarDoubleClickedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc fcQTabBar_slot_callback_tabBarDoubleClicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTabBartabBarDoubleClickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onTabBarDoubleClicked*(self: gen_qtabbar_types.QTabBar, slot: QTabBartabBarDoubleClickedSlot) =
  var tmp = new QTabBartabBarDoubleClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_connect_tabBarDoubleClicked(self.h, cast[int](addr tmp[]), fcQTabBar_slot_callback_tabBarDoubleClicked, fcQTabBar_slot_callback_tabBarDoubleClicked_release)

proc tr*(_: type gen_qtabbar_types.QTabBar, s: cstring, c: cstring): string =
  let v_ms = fcQTabBar_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtabbar_types.QTabBar, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTabBar_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtabbar_types.QTabBar, s: cstring, c: cstring): string =
  let v_ms = fcQTabBar_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtabbar_types.QTabBar, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTabBar_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QTabBarmetaObjectProc* = proc(self: QTabBar): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QTabBarmetacastProc* = proc(self: QTabBar, param1: cstring): pointer {.raises: [], gcsafe.}
type QTabBarmetacallProc* = proc(self: QTabBar, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QTabBarsizeHintProc* = proc(self: QTabBar): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QTabBarminimumSizeHintProc* = proc(self: QTabBar): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QTabBartabSizeHintProc* = proc(self: QTabBar, index: cint): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QTabBarminimumTabSizeHintProc* = proc(self: QTabBar, index: cint): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QTabBartabInsertedProc* = proc(self: QTabBar, index: cint): void {.raises: [], gcsafe.}
type QTabBartabRemovedProc* = proc(self: QTabBar, index: cint): void {.raises: [], gcsafe.}
type QTabBartabLayoutChangeProc* = proc(self: QTabBar): void {.raises: [], gcsafe.}
type QTabBareventProc* = proc(self: QTabBar, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTabBarresizeEventProc* = proc(self: QTabBar, param1: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QTabBarshowEventProc* = proc(self: QTabBar, param1: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QTabBarhideEventProc* = proc(self: QTabBar, param1: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QTabBarpaintEventProc* = proc(self: QTabBar, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QTabBarmousePressEventProc* = proc(self: QTabBar, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTabBarmouseMoveEventProc* = proc(self: QTabBar, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTabBarmouseReleaseEventProc* = proc(self: QTabBar, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTabBarwheelEventProc* = proc(self: QTabBar, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QTabBarkeyPressEventProc* = proc(self: QTabBar, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QTabBarchangeEventProc* = proc(self: QTabBar, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTabBartimerEventProc* = proc(self: QTabBar, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QTabBardevTypeProc* = proc(self: QTabBar): cint {.raises: [], gcsafe.}
type QTabBarsetVisibleProc* = proc(self: QTabBar, visible: bool): void {.raises: [], gcsafe.}
type QTabBarheightForWidthProc* = proc(self: QTabBar, param1: cint): cint {.raises: [], gcsafe.}
type QTabBarhasHeightForWidthProc* = proc(self: QTabBar): bool {.raises: [], gcsafe.}
type QTabBarpaintEngineProc* = proc(self: QTabBar): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QTabBarmouseDoubleClickEventProc* = proc(self: QTabBar, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTabBarkeyReleaseEventProc* = proc(self: QTabBar, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QTabBarfocusInEventProc* = proc(self: QTabBar, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QTabBarfocusOutEventProc* = proc(self: QTabBar, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QTabBarenterEventProc* = proc(self: QTabBar, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTabBarleaveEventProc* = proc(self: QTabBar, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTabBarmoveEventProc* = proc(self: QTabBar, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QTabBarcloseEventProc* = proc(self: QTabBar, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QTabBarcontextMenuEventProc* = proc(self: QTabBar, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QTabBartabletEventProc* = proc(self: QTabBar, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QTabBaractionEventProc* = proc(self: QTabBar, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QTabBardragEnterEventProc* = proc(self: QTabBar, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QTabBardragMoveEventProc* = proc(self: QTabBar, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QTabBardragLeaveEventProc* = proc(self: QTabBar, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QTabBardropEventProc* = proc(self: QTabBar, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QTabBarnativeEventProc* = proc(self: QTabBar, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QTabBarmetricProc* = proc(self: QTabBar, param1: cint): cint {.raises: [], gcsafe.}
type QTabBarinitPainterProc* = proc(self: QTabBar, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QTabBarredirectedProc* = proc(self: QTabBar, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QTabBarsharedPainterProc* = proc(self: QTabBar): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QTabBarinputMethodEventProc* = proc(self: QTabBar, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QTabBarinputMethodQueryProc* = proc(self: QTabBar, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QTabBarfocusNextPrevChildProc* = proc(self: QTabBar, next: bool): bool {.raises: [], gcsafe.}
type QTabBareventFilterProc* = proc(self: QTabBar, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTabBarchildEventProc* = proc(self: QTabBar, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QTabBarcustomEventProc* = proc(self: QTabBar, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTabBarconnectNotifyProc* = proc(self: QTabBar, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTabBardisconnectNotifyProc* = proc(self: QTabBar, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QTabBarVTable* {.inheritable, pure.} = object
  vtbl: cQTabBarVTable
  metaObject*: QTabBarmetaObjectProc
  metacast*: QTabBarmetacastProc
  metacall*: QTabBarmetacallProc
  sizeHint*: QTabBarsizeHintProc
  minimumSizeHint*: QTabBarminimumSizeHintProc
  tabSizeHint*: QTabBartabSizeHintProc
  minimumTabSizeHint*: QTabBarminimumTabSizeHintProc
  tabInserted*: QTabBartabInsertedProc
  tabRemoved*: QTabBartabRemovedProc
  tabLayoutChange*: QTabBartabLayoutChangeProc
  event*: QTabBareventProc
  resizeEvent*: QTabBarresizeEventProc
  showEvent*: QTabBarshowEventProc
  hideEvent*: QTabBarhideEventProc
  paintEvent*: QTabBarpaintEventProc
  mousePressEvent*: QTabBarmousePressEventProc
  mouseMoveEvent*: QTabBarmouseMoveEventProc
  mouseReleaseEvent*: QTabBarmouseReleaseEventProc
  wheelEvent*: QTabBarwheelEventProc
  keyPressEvent*: QTabBarkeyPressEventProc
  changeEvent*: QTabBarchangeEventProc
  timerEvent*: QTabBartimerEventProc
  devType*: QTabBardevTypeProc
  setVisible*: QTabBarsetVisibleProc
  heightForWidth*: QTabBarheightForWidthProc
  hasHeightForWidth*: QTabBarhasHeightForWidthProc
  paintEngine*: QTabBarpaintEngineProc
  mouseDoubleClickEvent*: QTabBarmouseDoubleClickEventProc
  keyReleaseEvent*: QTabBarkeyReleaseEventProc
  focusInEvent*: QTabBarfocusInEventProc
  focusOutEvent*: QTabBarfocusOutEventProc
  enterEvent*: QTabBarenterEventProc
  leaveEvent*: QTabBarleaveEventProc
  moveEvent*: QTabBarmoveEventProc
  closeEvent*: QTabBarcloseEventProc
  contextMenuEvent*: QTabBarcontextMenuEventProc
  tabletEvent*: QTabBartabletEventProc
  actionEvent*: QTabBaractionEventProc
  dragEnterEvent*: QTabBardragEnterEventProc
  dragMoveEvent*: QTabBardragMoveEventProc
  dragLeaveEvent*: QTabBardragLeaveEventProc
  dropEvent*: QTabBardropEventProc
  nativeEvent*: QTabBarnativeEventProc
  metric*: QTabBarmetricProc
  initPainter*: QTabBarinitPainterProc
  redirected*: QTabBarredirectedProc
  sharedPainter*: QTabBarsharedPainterProc
  inputMethodEvent*: QTabBarinputMethodEventProc
  inputMethodQuery*: QTabBarinputMethodQueryProc
  focusNextPrevChild*: QTabBarfocusNextPrevChildProc
  eventFilter*: QTabBareventFilterProc
  childEvent*: QTabBarchildEventProc
  customEvent*: QTabBarcustomEventProc
  connectNotify*: QTabBarconnectNotifyProc
  disconnectNotify*: QTabBardisconnectNotifyProc

proc QTabBarmetaObject*(self: gen_qtabbar_types.QTabBar): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTabBar_virtualbase_metaObject(self.h), owned: false)

proc QTabBarmetacast*(self: gen_qtabbar_types.QTabBar, param1: cstring): pointer =
  fcQTabBar_virtualbase_metacast(self.h, param1)

proc QTabBarmetacall*(self: gen_qtabbar_types.QTabBar, param1: cint, param2: cint, param3: pointer): cint =
  fcQTabBar_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QTabBarsizeHint*(self: gen_qtabbar_types.QTabBar): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTabBar_virtualbase_sizeHint(self.h), owned: true)

proc QTabBarminimumSizeHint*(self: gen_qtabbar_types.QTabBar): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTabBar_virtualbase_minimumSizeHint(self.h), owned: true)

proc QTabBartabSizeHint*(self: gen_qtabbar_types.QTabBar, index: cint): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTabBar_virtualbase_tabSizeHint(self.h, index), owned: true)

proc QTabBarminimumTabSizeHint*(self: gen_qtabbar_types.QTabBar, index: cint): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTabBar_virtualbase_minimumTabSizeHint(self.h, index), owned: true)

proc QTabBartabInserted*(self: gen_qtabbar_types.QTabBar, index: cint): void =
  fcQTabBar_virtualbase_tabInserted(self.h, index)

proc QTabBartabRemoved*(self: gen_qtabbar_types.QTabBar, index: cint): void =
  fcQTabBar_virtualbase_tabRemoved(self.h, index)

proc QTabBartabLayoutChange*(self: gen_qtabbar_types.QTabBar): void =
  fcQTabBar_virtualbase_tabLayoutChange(self.h)

proc QTabBarevent*(self: gen_qtabbar_types.QTabBar, param1: gen_qcoreevent_types.QEvent): bool =
  fcQTabBar_virtualbase_event(self.h, param1.h)

proc QTabBarresizeEvent*(self: gen_qtabbar_types.QTabBar, param1: gen_qevent_types.QResizeEvent): void =
  fcQTabBar_virtualbase_resizeEvent(self.h, param1.h)

proc QTabBarshowEvent*(self: gen_qtabbar_types.QTabBar, param1: gen_qevent_types.QShowEvent): void =
  fcQTabBar_virtualbase_showEvent(self.h, param1.h)

proc QTabBarhideEvent*(self: gen_qtabbar_types.QTabBar, param1: gen_qevent_types.QHideEvent): void =
  fcQTabBar_virtualbase_hideEvent(self.h, param1.h)

proc QTabBarpaintEvent*(self: gen_qtabbar_types.QTabBar, param1: gen_qevent_types.QPaintEvent): void =
  fcQTabBar_virtualbase_paintEvent(self.h, param1.h)

proc QTabBarmousePressEvent*(self: gen_qtabbar_types.QTabBar, param1: gen_qevent_types.QMouseEvent): void =
  fcQTabBar_virtualbase_mousePressEvent(self.h, param1.h)

proc QTabBarmouseMoveEvent*(self: gen_qtabbar_types.QTabBar, param1: gen_qevent_types.QMouseEvent): void =
  fcQTabBar_virtualbase_mouseMoveEvent(self.h, param1.h)

proc QTabBarmouseReleaseEvent*(self: gen_qtabbar_types.QTabBar, param1: gen_qevent_types.QMouseEvent): void =
  fcQTabBar_virtualbase_mouseReleaseEvent(self.h, param1.h)

proc QTabBarwheelEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QWheelEvent): void =
  fcQTabBar_virtualbase_wheelEvent(self.h, event.h)

proc QTabBarkeyPressEvent*(self: gen_qtabbar_types.QTabBar, param1: gen_qevent_types.QKeyEvent): void =
  fcQTabBar_virtualbase_keyPressEvent(self.h, param1.h)

proc QTabBarchangeEvent*(self: gen_qtabbar_types.QTabBar, param1: gen_qcoreevent_types.QEvent): void =
  fcQTabBar_virtualbase_changeEvent(self.h, param1.h)

proc QTabBartimerEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQTabBar_virtualbase_timerEvent(self.h, event.h)

proc QTabBardevType*(self: gen_qtabbar_types.QTabBar): cint =
  fcQTabBar_virtualbase_devType(self.h)

proc QTabBarsetVisible*(self: gen_qtabbar_types.QTabBar, visible: bool): void =
  fcQTabBar_virtualbase_setVisible(self.h, visible)

proc QTabBarheightForWidth*(self: gen_qtabbar_types.QTabBar, param1: cint): cint =
  fcQTabBar_virtualbase_heightForWidth(self.h, param1)

proc QTabBarhasHeightForWidth*(self: gen_qtabbar_types.QTabBar): bool =
  fcQTabBar_virtualbase_hasHeightForWidth(self.h)

proc QTabBarpaintEngine*(self: gen_qtabbar_types.QTabBar): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQTabBar_virtualbase_paintEngine(self.h), owned: false)

proc QTabBarmouseDoubleClickEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QMouseEvent): void =
  fcQTabBar_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc QTabBarkeyReleaseEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QKeyEvent): void =
  fcQTabBar_virtualbase_keyReleaseEvent(self.h, event.h)

proc QTabBarfocusInEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QFocusEvent): void =
  fcQTabBar_virtualbase_focusInEvent(self.h, event.h)

proc QTabBarfocusOutEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QFocusEvent): void =
  fcQTabBar_virtualbase_focusOutEvent(self.h, event.h)

proc QTabBarenterEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qcoreevent_types.QEvent): void =
  fcQTabBar_virtualbase_enterEvent(self.h, event.h)

proc QTabBarleaveEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qcoreevent_types.QEvent): void =
  fcQTabBar_virtualbase_leaveEvent(self.h, event.h)

proc QTabBarmoveEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QMoveEvent): void =
  fcQTabBar_virtualbase_moveEvent(self.h, event.h)

proc QTabBarcloseEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QCloseEvent): void =
  fcQTabBar_virtualbase_closeEvent(self.h, event.h)

proc QTabBarcontextMenuEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QContextMenuEvent): void =
  fcQTabBar_virtualbase_contextMenuEvent(self.h, event.h)

proc QTabBartabletEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QTabletEvent): void =
  fcQTabBar_virtualbase_tabletEvent(self.h, event.h)

proc QTabBaractionEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QActionEvent): void =
  fcQTabBar_virtualbase_actionEvent(self.h, event.h)

proc QTabBardragEnterEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QDragEnterEvent): void =
  fcQTabBar_virtualbase_dragEnterEvent(self.h, event.h)

proc QTabBardragMoveEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QDragMoveEvent): void =
  fcQTabBar_virtualbase_dragMoveEvent(self.h, event.h)

proc QTabBardragLeaveEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQTabBar_virtualbase_dragLeaveEvent(self.h, event.h)

proc QTabBardropEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QDropEvent): void =
  fcQTabBar_virtualbase_dropEvent(self.h, event.h)

proc QTabBarnativeEvent*(self: gen_qtabbar_types.QTabBar, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQTabBar_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc QTabBarmetric*(self: gen_qtabbar_types.QTabBar, param1: cint): cint =
  fcQTabBar_virtualbase_metric(self.h, cint(param1))

proc QTabBarinitPainter*(self: gen_qtabbar_types.QTabBar, painter: gen_qpainter_types.QPainter): void =
  fcQTabBar_virtualbase_initPainter(self.h, painter.h)

proc QTabBarredirected*(self: gen_qtabbar_types.QTabBar, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQTabBar_virtualbase_redirected(self.h, offset.h), owned: false)

proc QTabBarsharedPainter*(self: gen_qtabbar_types.QTabBar): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQTabBar_virtualbase_sharedPainter(self.h), owned: false)

proc QTabBarinputMethodEvent*(self: gen_qtabbar_types.QTabBar, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQTabBar_virtualbase_inputMethodEvent(self.h, param1.h)

proc QTabBarinputMethodQuery*(self: gen_qtabbar_types.QTabBar, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTabBar_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc QTabBarfocusNextPrevChild*(self: gen_qtabbar_types.QTabBar, next: bool): bool =
  fcQTabBar_virtualbase_focusNextPrevChild(self.h, next)

proc QTabBareventFilter*(self: gen_qtabbar_types.QTabBar, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTabBar_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QTabBarchildEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTabBar_virtualbase_childEvent(self.h, event.h)

proc QTabBarcustomEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qcoreevent_types.QEvent): void =
  fcQTabBar_virtualbase_customEvent(self.h, event.h)

proc QTabBarconnectNotify*(self: gen_qtabbar_types.QTabBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTabBar_virtualbase_connectNotify(self.h, signal.h)

proc QTabBardisconnectNotify*(self: gen_qtabbar_types.QTabBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTabBar_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQTabBar_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTabBar_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQTabBar_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQTabBar_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTabBar_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTabBar_vtable_callback_tabSizeHint(self: pointer, index: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].tabSizeHint(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTabBar_vtable_callback_minimumTabSizeHint(self: pointer, index: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].minimumTabSizeHint(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTabBar_vtable_callback_tabInserted(self: pointer, index: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = index
  vtbl[].tabInserted(self, slotval1)

proc fcQTabBar_vtable_callback_tabRemoved(self: pointer, index: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = index
  vtbl[].tabRemoved(self, slotval1)

proc fcQTabBar_vtable_callback_tabLayoutChange(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  vtbl[].tabLayoutChange(self)

proc fcQTabBar_vtable_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQTabBar_vtable_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc fcQTabBar_vtable_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  vtbl[].showEvent(self, slotval1)

proc fcQTabBar_vtable_callback_hideEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: param1, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc fcQTabBar_vtable_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc fcQTabBar_vtable_callback_mousePressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQTabBar_vtable_callback_mouseMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQTabBar_vtable_callback_mouseReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQTabBar_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQTabBar_vtable_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQTabBar_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc fcQTabBar_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQTabBar_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQTabBar_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc fcQTabBar_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQTabBar_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQTabBar_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTabBar_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQTabBar_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQTabBar_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQTabBar_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQTabBar_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc fcQTabBar_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc fcQTabBar_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc fcQTabBar_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc fcQTabBar_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc fcQTabBar_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc fcQTabBar_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc fcQTabBar_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQTabBar_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQTabBar_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQTabBar_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc fcQTabBar_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQTabBar_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQTabBar_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc fcQTabBar_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTabBar_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTabBar_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQTabBar_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTabBar_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc fcQTabBar_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQTabBar_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQTabBar_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQTabBar_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQTabBar_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](fcQTabBar_vdata(self))
  let self = QTabBar(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQTabBar* {.inheritable.} = ref object of QTabBar
  vtbl*: cQTabBarVTable

method metaObject*(self: VirtualQTabBar): gen_qobjectdefs_types.QMetaObject {.base.} =
  QTabBarmetaObject(self[])
method metacast*(self: VirtualQTabBar, param1: cstring): pointer {.base.} =
  QTabBarmetacast(self[], param1)
method metacall*(self: VirtualQTabBar, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QTabBarmetacall(self[], param1, param2, param3)
method sizeHint*(self: VirtualQTabBar): gen_qsize_types.QSize {.base.} =
  QTabBarsizeHint(self[])
method minimumSizeHint*(self: VirtualQTabBar): gen_qsize_types.QSize {.base.} =
  QTabBarminimumSizeHint(self[])
method tabSizeHint*(self: VirtualQTabBar, index: cint): gen_qsize_types.QSize {.base.} =
  QTabBartabSizeHint(self[], index)
method minimumTabSizeHint*(self: VirtualQTabBar, index: cint): gen_qsize_types.QSize {.base.} =
  QTabBarminimumTabSizeHint(self[], index)
method tabInserted*(self: VirtualQTabBar, index: cint): void {.base.} =
  QTabBartabInserted(self[], index)
method tabRemoved*(self: VirtualQTabBar, index: cint): void {.base.} =
  QTabBartabRemoved(self[], index)
method tabLayoutChange*(self: VirtualQTabBar): void {.base.} =
  QTabBartabLayoutChange(self[])
method event*(self: VirtualQTabBar, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTabBarevent(self[], param1)
method resizeEvent*(self: VirtualQTabBar, param1: gen_qevent_types.QResizeEvent): void {.base.} =
  QTabBarresizeEvent(self[], param1)
method showEvent*(self: VirtualQTabBar, param1: gen_qevent_types.QShowEvent): void {.base.} =
  QTabBarshowEvent(self[], param1)
method hideEvent*(self: VirtualQTabBar, param1: gen_qevent_types.QHideEvent): void {.base.} =
  QTabBarhideEvent(self[], param1)
method paintEvent*(self: VirtualQTabBar, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QTabBarpaintEvent(self[], param1)
method mousePressEvent*(self: VirtualQTabBar, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QTabBarmousePressEvent(self[], param1)
method mouseMoveEvent*(self: VirtualQTabBar, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QTabBarmouseMoveEvent(self[], param1)
method mouseReleaseEvent*(self: VirtualQTabBar, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QTabBarmouseReleaseEvent(self[], param1)
method wheelEvent*(self: VirtualQTabBar, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QTabBarwheelEvent(self[], event)
method keyPressEvent*(self: VirtualQTabBar, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QTabBarkeyPressEvent(self[], param1)
method changeEvent*(self: VirtualQTabBar, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QTabBarchangeEvent(self[], param1)
method timerEvent*(self: VirtualQTabBar, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QTabBartimerEvent(self[], event)
method devType*(self: VirtualQTabBar): cint {.base.} =
  QTabBardevType(self[])
method setVisible*(self: VirtualQTabBar, visible: bool): void {.base.} =
  QTabBarsetVisible(self[], visible)
method heightForWidth*(self: VirtualQTabBar, param1: cint): cint {.base.} =
  QTabBarheightForWidth(self[], param1)
method hasHeightForWidth*(self: VirtualQTabBar): bool {.base.} =
  QTabBarhasHeightForWidth(self[])
method paintEngine*(self: VirtualQTabBar): gen_qpaintengine_types.QPaintEngine {.base.} =
  QTabBarpaintEngine(self[])
method mouseDoubleClickEvent*(self: VirtualQTabBar, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QTabBarmouseDoubleClickEvent(self[], event)
method keyReleaseEvent*(self: VirtualQTabBar, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QTabBarkeyReleaseEvent(self[], event)
method focusInEvent*(self: VirtualQTabBar, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QTabBarfocusInEvent(self[], event)
method focusOutEvent*(self: VirtualQTabBar, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QTabBarfocusOutEvent(self[], event)
method enterEvent*(self: VirtualQTabBar, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTabBarenterEvent(self[], event)
method leaveEvent*(self: VirtualQTabBar, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTabBarleaveEvent(self[], event)
method moveEvent*(self: VirtualQTabBar, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QTabBarmoveEvent(self[], event)
method closeEvent*(self: VirtualQTabBar, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QTabBarcloseEvent(self[], event)
method contextMenuEvent*(self: VirtualQTabBar, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QTabBarcontextMenuEvent(self[], event)
method tabletEvent*(self: VirtualQTabBar, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QTabBartabletEvent(self[], event)
method actionEvent*(self: VirtualQTabBar, event: gen_qevent_types.QActionEvent): void {.base.} =
  QTabBaractionEvent(self[], event)
method dragEnterEvent*(self: VirtualQTabBar, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QTabBardragEnterEvent(self[], event)
method dragMoveEvent*(self: VirtualQTabBar, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QTabBardragMoveEvent(self[], event)
method dragLeaveEvent*(self: VirtualQTabBar, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QTabBardragLeaveEvent(self[], event)
method dropEvent*(self: VirtualQTabBar, event: gen_qevent_types.QDropEvent): void {.base.} =
  QTabBardropEvent(self[], event)
method nativeEvent*(self: VirtualQTabBar, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QTabBarnativeEvent(self[], eventType, message, resultVal)
method metric*(self: VirtualQTabBar, param1: cint): cint {.base.} =
  QTabBarmetric(self[], param1)
method initPainter*(self: VirtualQTabBar, painter: gen_qpainter_types.QPainter): void {.base.} =
  QTabBarinitPainter(self[], painter)
method redirected*(self: VirtualQTabBar, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QTabBarredirected(self[], offset)
method sharedPainter*(self: VirtualQTabBar): gen_qpainter_types.QPainter {.base.} =
  QTabBarsharedPainter(self[])
method inputMethodEvent*(self: VirtualQTabBar, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QTabBarinputMethodEvent(self[], param1)
method inputMethodQuery*(self: VirtualQTabBar, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QTabBarinputMethodQuery(self[], param1)
method focusNextPrevChild*(self: VirtualQTabBar, next: bool): bool {.base.} =
  QTabBarfocusNextPrevChild(self[], next)
method eventFilter*(self: VirtualQTabBar, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTabBareventFilter(self[], watched, event)
method childEvent*(self: VirtualQTabBar, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QTabBarchildEvent(self[], event)
method customEvent*(self: VirtualQTabBar, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTabBarcustomEvent(self[], event)
method connectNotify*(self: VirtualQTabBar, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTabBarconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQTabBar, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTabBardisconnectNotify(self[], signal)

proc fcQTabBar_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTabBar_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQTabBar_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQTabBar_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTabBar_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTabBar_method_callback_tabSizeHint(self: pointer, index: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = index
  var virtualReturn = inst.tabSizeHint(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTabBar_method_callback_minimumTabSizeHint(self: pointer, index: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = index
  var virtualReturn = inst.minimumTabSizeHint(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTabBar_method_callback_tabInserted(self: pointer, index: cint): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = index
  inst.tabInserted(slotval1)

proc fcQTabBar_method_callback_tabRemoved(self: pointer, index: cint): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = index
  inst.tabRemoved(slotval1)

proc fcQTabBar_method_callback_tabLayoutChange(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  inst.tabLayoutChange()

proc fcQTabBar_method_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQTabBar_method_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  inst.resizeEvent(slotval1)

proc fcQTabBar_method_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  inst.showEvent(slotval1)

proc fcQTabBar_method_callback_hideEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: param1, owned: false)
  inst.hideEvent(slotval1)

proc fcQTabBar_method_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  inst.paintEvent(slotval1)

proc fcQTabBar_method_callback_mousePressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQTabBar_method_callback_mouseMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQTabBar_method_callback_mouseReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQTabBar_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

proc fcQTabBar_method_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQTabBar_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

proc fcQTabBar_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQTabBar_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQTabBar_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

proc fcQTabBar_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQTabBar_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQTabBar_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTabBar_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQTabBar_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQTabBar_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

proc fcQTabBar_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQTabBar_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

proc fcQTabBar_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

proc fcQTabBar_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

proc fcQTabBar_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

proc fcQTabBar_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

proc fcQTabBar_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

proc fcQTabBar_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

proc fcQTabBar_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

proc fcQTabBar_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

proc fcQTabBar_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

proc fcQTabBar_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

proc fcQTabBar_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQTabBar_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQTabBar_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

proc fcQTabBar_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTabBar_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTabBar_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

proc fcQTabBar_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTabBar_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

proc fcQTabBar_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQTabBar_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQTabBar_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQTabBar_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQTabBar_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTabBar](fcQTabBar_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc initStyleOption*(self: gen_qtabbar_types.QTabBar, option: gen_qstyleoption_types.QStyleOptionTab, tabIndex: cint): void =
  fcQTabBar_protectedbase_initStyleOption(self.h, option.h, tabIndex)

proc updateMicroFocus*(self: gen_qtabbar_types.QTabBar): void =
  fcQTabBar_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qtabbar_types.QTabBar): void =
  fcQTabBar_protectedbase_create(self.h)

proc destroy*(self: gen_qtabbar_types.QTabBar): void =
  fcQTabBar_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qtabbar_types.QTabBar): bool =
  fcQTabBar_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qtabbar_types.QTabBar): bool =
  fcQTabBar_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qtabbar_types.QTabBar): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQTabBar_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qtabbar_types.QTabBar): cint =
  fcQTabBar_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qtabbar_types.QTabBar, signal: cstring): cint =
  fcQTabBar_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qtabbar_types.QTabBar, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQTabBar_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qtabbar_types.QTabBar,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QTabBarVTable = nil): gen_qtabbar_types.QTabBar =
  let vtbl = if vtbl == nil: new QTabBarVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTabBarVTable](fcQTabBar_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQTabBar_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQTabBar_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQTabBar_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQTabBar_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQTabBar_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].tabSizeHint):
    vtbl[].vtbl.tabSizeHint = fcQTabBar_vtable_callback_tabSizeHint
  if not isNil(vtbl[].minimumTabSizeHint):
    vtbl[].vtbl.minimumTabSizeHint = fcQTabBar_vtable_callback_minimumTabSizeHint
  if not isNil(vtbl[].tabInserted):
    vtbl[].vtbl.tabInserted = fcQTabBar_vtable_callback_tabInserted
  if not isNil(vtbl[].tabRemoved):
    vtbl[].vtbl.tabRemoved = fcQTabBar_vtable_callback_tabRemoved
  if not isNil(vtbl[].tabLayoutChange):
    vtbl[].vtbl.tabLayoutChange = fcQTabBar_vtable_callback_tabLayoutChange
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQTabBar_vtable_callback_event
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQTabBar_vtable_callback_resizeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQTabBar_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQTabBar_vtable_callback_hideEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQTabBar_vtable_callback_paintEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQTabBar_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQTabBar_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQTabBar_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQTabBar_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQTabBar_vtable_callback_keyPressEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQTabBar_vtable_callback_changeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQTabBar_vtable_callback_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQTabBar_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQTabBar_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQTabBar_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQTabBar_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQTabBar_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQTabBar_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQTabBar_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQTabBar_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQTabBar_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQTabBar_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQTabBar_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQTabBar_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQTabBar_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQTabBar_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQTabBar_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQTabBar_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQTabBar_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQTabBar_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQTabBar_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQTabBar_vtable_callback_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQTabBar_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQTabBar_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQTabBar_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQTabBar_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQTabBar_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQTabBar_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQTabBar_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQTabBar_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQTabBar_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQTabBar_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQTabBar_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQTabBar_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQTabBar_vtable_callback_disconnectNotify
  gen_qtabbar_types.QTabBar(h: fcQTabBar_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qtabbar_types.QTabBar,
    vtbl: ref QTabBarVTable = nil): gen_qtabbar_types.QTabBar =
  let vtbl = if vtbl == nil: new QTabBarVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTabBarVTable](fcQTabBar_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQTabBar_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQTabBar_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQTabBar_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQTabBar_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQTabBar_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].tabSizeHint):
    vtbl[].vtbl.tabSizeHint = fcQTabBar_vtable_callback_tabSizeHint
  if not isNil(vtbl[].minimumTabSizeHint):
    vtbl[].vtbl.minimumTabSizeHint = fcQTabBar_vtable_callback_minimumTabSizeHint
  if not isNil(vtbl[].tabInserted):
    vtbl[].vtbl.tabInserted = fcQTabBar_vtable_callback_tabInserted
  if not isNil(vtbl[].tabRemoved):
    vtbl[].vtbl.tabRemoved = fcQTabBar_vtable_callback_tabRemoved
  if not isNil(vtbl[].tabLayoutChange):
    vtbl[].vtbl.tabLayoutChange = fcQTabBar_vtable_callback_tabLayoutChange
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQTabBar_vtable_callback_event
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQTabBar_vtable_callback_resizeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQTabBar_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQTabBar_vtable_callback_hideEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQTabBar_vtable_callback_paintEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQTabBar_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQTabBar_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQTabBar_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQTabBar_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQTabBar_vtable_callback_keyPressEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQTabBar_vtable_callback_changeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQTabBar_vtable_callback_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQTabBar_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQTabBar_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQTabBar_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQTabBar_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQTabBar_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQTabBar_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQTabBar_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQTabBar_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQTabBar_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQTabBar_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQTabBar_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQTabBar_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQTabBar_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQTabBar_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQTabBar_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQTabBar_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQTabBar_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQTabBar_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQTabBar_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQTabBar_vtable_callback_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQTabBar_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQTabBar_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQTabBar_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQTabBar_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQTabBar_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQTabBar_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQTabBar_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQTabBar_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQTabBar_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQTabBar_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQTabBar_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQTabBar_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQTabBar_vtable_callback_disconnectNotify
  gen_qtabbar_types.QTabBar(h: fcQTabBar_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQTabBar_mvtbl = cQTabBarVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQTabBar()[])](self.fcQTabBar_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQTabBar_method_callback_metaObject,
  metacast: fcQTabBar_method_callback_metacast,
  metacall: fcQTabBar_method_callback_metacall,
  sizeHint: fcQTabBar_method_callback_sizeHint,
  minimumSizeHint: fcQTabBar_method_callback_minimumSizeHint,
  tabSizeHint: fcQTabBar_method_callback_tabSizeHint,
  minimumTabSizeHint: fcQTabBar_method_callback_minimumTabSizeHint,
  tabInserted: fcQTabBar_method_callback_tabInserted,
  tabRemoved: fcQTabBar_method_callback_tabRemoved,
  tabLayoutChange: fcQTabBar_method_callback_tabLayoutChange,
  event: fcQTabBar_method_callback_event,
  resizeEvent: fcQTabBar_method_callback_resizeEvent,
  showEvent: fcQTabBar_method_callback_showEvent,
  hideEvent: fcQTabBar_method_callback_hideEvent,
  paintEvent: fcQTabBar_method_callback_paintEvent,
  mousePressEvent: fcQTabBar_method_callback_mousePressEvent,
  mouseMoveEvent: fcQTabBar_method_callback_mouseMoveEvent,
  mouseReleaseEvent: fcQTabBar_method_callback_mouseReleaseEvent,
  wheelEvent: fcQTabBar_method_callback_wheelEvent,
  keyPressEvent: fcQTabBar_method_callback_keyPressEvent,
  changeEvent: fcQTabBar_method_callback_changeEvent,
  timerEvent: fcQTabBar_method_callback_timerEvent,
  devType: fcQTabBar_method_callback_devType,
  setVisible: fcQTabBar_method_callback_setVisible,
  heightForWidth: fcQTabBar_method_callback_heightForWidth,
  hasHeightForWidth: fcQTabBar_method_callback_hasHeightForWidth,
  paintEngine: fcQTabBar_method_callback_paintEngine,
  mouseDoubleClickEvent: fcQTabBar_method_callback_mouseDoubleClickEvent,
  keyReleaseEvent: fcQTabBar_method_callback_keyReleaseEvent,
  focusInEvent: fcQTabBar_method_callback_focusInEvent,
  focusOutEvent: fcQTabBar_method_callback_focusOutEvent,
  enterEvent: fcQTabBar_method_callback_enterEvent,
  leaveEvent: fcQTabBar_method_callback_leaveEvent,
  moveEvent: fcQTabBar_method_callback_moveEvent,
  closeEvent: fcQTabBar_method_callback_closeEvent,
  contextMenuEvent: fcQTabBar_method_callback_contextMenuEvent,
  tabletEvent: fcQTabBar_method_callback_tabletEvent,
  actionEvent: fcQTabBar_method_callback_actionEvent,
  dragEnterEvent: fcQTabBar_method_callback_dragEnterEvent,
  dragMoveEvent: fcQTabBar_method_callback_dragMoveEvent,
  dragLeaveEvent: fcQTabBar_method_callback_dragLeaveEvent,
  dropEvent: fcQTabBar_method_callback_dropEvent,
  nativeEvent: fcQTabBar_method_callback_nativeEvent,
  metric: fcQTabBar_method_callback_metric,
  initPainter: fcQTabBar_method_callback_initPainter,
  redirected: fcQTabBar_method_callback_redirected,
  sharedPainter: fcQTabBar_method_callback_sharedPainter,
  inputMethodEvent: fcQTabBar_method_callback_inputMethodEvent,
  inputMethodQuery: fcQTabBar_method_callback_inputMethodQuery,
  focusNextPrevChild: fcQTabBar_method_callback_focusNextPrevChild,
  eventFilter: fcQTabBar_method_callback_eventFilter,
  childEvent: fcQTabBar_method_callback_childEvent,
  customEvent: fcQTabBar_method_callback_customEvent,
  connectNotify: fcQTabBar_method_callback_connectNotify,
  disconnectNotify: fcQTabBar_method_callback_disconnectNotify,
)
proc create*(T: type gen_qtabbar_types.QTabBar,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQTabBar) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTabBar_new(addr(cQTabBar_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qtabbar_types.QTabBar,
    inst: VirtualQTabBar) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTabBar_new2(addr(cQTabBar_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qtabbar_types.QTabBar): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTabBar_staticMetaObject())
