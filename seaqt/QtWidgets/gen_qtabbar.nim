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
{.compile("gen_qtabbar.cpp", cflags).}


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

proc fcQTabBar_metaObject(self: pointer, ): pointer {.importc: "QTabBar_metaObject".}
proc fcQTabBar_metacast(self: pointer, param1: cstring): pointer {.importc: "QTabBar_metacast".}
proc fcQTabBar_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTabBar_metacall".}
proc fcQTabBar_tr(s: cstring): struct_miqt_string {.importc: "QTabBar_tr".}
proc fcQTabBar_trUtf8(s: cstring): struct_miqt_string {.importc: "QTabBar_trUtf8".}
proc fcQTabBar_shape(self: pointer, ): cint {.importc: "QTabBar_shape".}
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
proc fcQTabBar_elideMode(self: pointer, ): cint {.importc: "QTabBar_elideMode".}
proc fcQTabBar_setElideMode(self: pointer, mode: cint): void {.importc: "QTabBar_setElideMode".}
proc fcQTabBar_setTabToolTip(self: pointer, index: cint, tip: struct_miqt_string): void {.importc: "QTabBar_setTabToolTip".}
proc fcQTabBar_tabToolTip(self: pointer, index: cint): struct_miqt_string {.importc: "QTabBar_tabToolTip".}
proc fcQTabBar_setTabWhatsThis(self: pointer, index: cint, text: struct_miqt_string): void {.importc: "QTabBar_setTabWhatsThis".}
proc fcQTabBar_tabWhatsThis(self: pointer, index: cint): struct_miqt_string {.importc: "QTabBar_tabWhatsThis".}
proc fcQTabBar_setTabData(self: pointer, index: cint, data: pointer): void {.importc: "QTabBar_setTabData".}
proc fcQTabBar_tabData(self: pointer, index: cint): pointer {.importc: "QTabBar_tabData".}
proc fcQTabBar_tabRect(self: pointer, index: cint): pointer {.importc: "QTabBar_tabRect".}
proc fcQTabBar_tabAt(self: pointer, pos: pointer): cint {.importc: "QTabBar_tabAt".}
proc fcQTabBar_currentIndex(self: pointer, ): cint {.importc: "QTabBar_currentIndex".}
proc fcQTabBar_count(self: pointer, ): cint {.importc: "QTabBar_count".}
proc fcQTabBar_sizeHint(self: pointer, ): pointer {.importc: "QTabBar_sizeHint".}
proc fcQTabBar_minimumSizeHint(self: pointer, ): pointer {.importc: "QTabBar_minimumSizeHint".}
proc fcQTabBar_setDrawBase(self: pointer, drawTheBase: bool): void {.importc: "QTabBar_setDrawBase".}
proc fcQTabBar_drawBase(self: pointer, ): bool {.importc: "QTabBar_drawBase".}
proc fcQTabBar_iconSize(self: pointer, ): pointer {.importc: "QTabBar_iconSize".}
proc fcQTabBar_setIconSize(self: pointer, size: pointer): void {.importc: "QTabBar_setIconSize".}
proc fcQTabBar_usesScrollButtons(self: pointer, ): bool {.importc: "QTabBar_usesScrollButtons".}
proc fcQTabBar_setUsesScrollButtons(self: pointer, useButtons: bool): void {.importc: "QTabBar_setUsesScrollButtons".}
proc fcQTabBar_tabsClosable(self: pointer, ): bool {.importc: "QTabBar_tabsClosable".}
proc fcQTabBar_setTabsClosable(self: pointer, closable: bool): void {.importc: "QTabBar_setTabsClosable".}
proc fcQTabBar_setTabButton(self: pointer, index: cint, position: cint, widget: pointer): void {.importc: "QTabBar_setTabButton".}
proc fcQTabBar_tabButton(self: pointer, index: cint, position: cint): pointer {.importc: "QTabBar_tabButton".}
proc fcQTabBar_selectionBehaviorOnRemove(self: pointer, ): cint {.importc: "QTabBar_selectionBehaviorOnRemove".}
proc fcQTabBar_setSelectionBehaviorOnRemove(self: pointer, behavior: cint): void {.importc: "QTabBar_setSelectionBehaviorOnRemove".}
proc fcQTabBar_expanding(self: pointer, ): bool {.importc: "QTabBar_expanding".}
proc fcQTabBar_setExpanding(self: pointer, enabled: bool): void {.importc: "QTabBar_setExpanding".}
proc fcQTabBar_isMovable(self: pointer, ): bool {.importc: "QTabBar_isMovable".}
proc fcQTabBar_setMovable(self: pointer, movable: bool): void {.importc: "QTabBar_setMovable".}
proc fcQTabBar_documentMode(self: pointer, ): bool {.importc: "QTabBar_documentMode".}
proc fcQTabBar_setDocumentMode(self: pointer, set: bool): void {.importc: "QTabBar_setDocumentMode".}
proc fcQTabBar_autoHide(self: pointer, ): bool {.importc: "QTabBar_autoHide".}
proc fcQTabBar_setAutoHide(self: pointer, hide: bool): void {.importc: "QTabBar_setAutoHide".}
proc fcQTabBar_changeCurrentOnDrag(self: pointer, ): bool {.importc: "QTabBar_changeCurrentOnDrag".}
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
type cQTabBarVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQTabBarVTable, self: ptr cQTabBar) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  tabSizeHint*: proc(vtbl, self: pointer, index: cint): pointer {.cdecl, raises: [], gcsafe.}
  minimumTabSizeHint*: proc(vtbl, self: pointer, index: cint): pointer {.cdecl, raises: [], gcsafe.}
  tabInserted*: proc(vtbl, self: pointer, index: cint): void {.cdecl, raises: [], gcsafe.}
  tabRemoved*: proc(vtbl, self: pointer, index: cint): void {.cdecl, raises: [], gcsafe.}
  tabLayoutChange*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQTabBar_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QTabBar_virtualbase_metaObject".}
proc fcQTabBar_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTabBar_virtualbase_metacast".}
proc fcQTabBar_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTabBar_virtualbase_metacall".}
proc fcQTabBar_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QTabBar_virtualbase_sizeHint".}
proc fcQTabBar_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QTabBar_virtualbase_minimumSizeHint".}
proc fcQTabBar_virtualbase_tabSizeHint(self: pointer, index: cint): pointer {.importc: "QTabBar_virtualbase_tabSizeHint".}
proc fcQTabBar_virtualbase_minimumTabSizeHint(self: pointer, index: cint): pointer {.importc: "QTabBar_virtualbase_minimumTabSizeHint".}
proc fcQTabBar_virtualbase_tabInserted(self: pointer, index: cint): void {.importc: "QTabBar_virtualbase_tabInserted".}
proc fcQTabBar_virtualbase_tabRemoved(self: pointer, index: cint): void {.importc: "QTabBar_virtualbase_tabRemoved".}
proc fcQTabBar_virtualbase_tabLayoutChange(self: pointer, ): void {.importc: "QTabBar_virtualbase_tabLayoutChange".}
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
proc fcQTabBar_virtualbase_devType(self: pointer, ): cint {.importc: "QTabBar_virtualbase_devType".}
proc fcQTabBar_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QTabBar_virtualbase_setVisible".}
proc fcQTabBar_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QTabBar_virtualbase_heightForWidth".}
proc fcQTabBar_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QTabBar_virtualbase_hasHeightForWidth".}
proc fcQTabBar_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QTabBar_virtualbase_paintEngine".}
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
proc fcQTabBar_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QTabBar_virtualbase_sharedPainter".}
proc fcQTabBar_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QTabBar_virtualbase_inputMethodEvent".}
proc fcQTabBar_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QTabBar_virtualbase_inputMethodQuery".}
proc fcQTabBar_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QTabBar_virtualbase_focusNextPrevChild".}
proc fcQTabBar_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QTabBar_virtualbase_eventFilter".}
proc fcQTabBar_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QTabBar_virtualbase_childEvent".}
proc fcQTabBar_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QTabBar_virtualbase_customEvent".}
proc fcQTabBar_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QTabBar_virtualbase_connectNotify".}
proc fcQTabBar_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QTabBar_virtualbase_disconnectNotify".}
proc fcQTabBar_protectedbase_initStyleOption(self: pointer, option: pointer, tabIndex: cint): void {.importc: "QTabBar_protectedbase_initStyleOption".}
proc fcQTabBar_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QTabBar_protectedbase_updateMicroFocus".}
proc fcQTabBar_protectedbase_create(self: pointer, ): void {.importc: "QTabBar_protectedbase_create".}
proc fcQTabBar_protectedbase_destroy(self: pointer, ): void {.importc: "QTabBar_protectedbase_destroy".}
proc fcQTabBar_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QTabBar_protectedbase_focusNextChild".}
proc fcQTabBar_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QTabBar_protectedbase_focusPreviousChild".}
proc fcQTabBar_protectedbase_sender(self: pointer, ): pointer {.importc: "QTabBar_protectedbase_sender".}
proc fcQTabBar_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QTabBar_protectedbase_senderSignalIndex".}
proc fcQTabBar_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QTabBar_protectedbase_receivers".}
proc fcQTabBar_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QTabBar_protectedbase_isSignalConnected".}
proc fcQTabBar_new(vtbl: pointer, parent: pointer): ptr cQTabBar {.importc: "QTabBar_new".}
proc fcQTabBar_new2(vtbl: pointer, ): ptr cQTabBar {.importc: "QTabBar_new2".}
proc fcQTabBar_staticMetaObject(): pointer {.importc: "QTabBar_staticMetaObject".}

proc metaObject*(self: gen_qtabbar_types.QTabBar, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTabBar_metaObject(self.h), owned: false)

proc metacast*(self: gen_qtabbar_types.QTabBar, param1: cstring): pointer =
  fcQTabBar_metacast(self.h, param1)

proc metacall*(self: gen_qtabbar_types.QTabBar, param1: cint, param2: cint, param3: pointer): cint =
  fcQTabBar_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtabbar_types.QTabBar, s: cstring): string =
  let v_ms = fcQTabBar_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtabbar_types.QTabBar, s: cstring): string =
  let v_ms = fcQTabBar_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc shape*(self: gen_qtabbar_types.QTabBar, ): cint =
  cint(fcQTabBar_shape(self.h))

proc setShape*(self: gen_qtabbar_types.QTabBar, shape: cint): void =
  fcQTabBar_setShape(self.h, cint(shape))

proc addTab*(self: gen_qtabbar_types.QTabBar, text: string): cint =
  fcQTabBar_addTab(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc addTab*(self: gen_qtabbar_types.QTabBar, icon: gen_qicon_types.QIcon, text: string): cint =
  fcQTabBar_addTab2(self.h, icon.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc insertTab*(self: gen_qtabbar_types.QTabBar, index: cint, text: string): cint =
  fcQTabBar_insertTab(self.h, index, struct_miqt_string(data: text, len: csize_t(len(text))))

proc insertTab*(self: gen_qtabbar_types.QTabBar, index: cint, icon: gen_qicon_types.QIcon, text: string): cint =
  fcQTabBar_insertTab2(self.h, index, icon.h, struct_miqt_string(data: text, len: csize_t(len(text))))

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
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTabText*(self: gen_qtabbar_types.QTabBar, index: cint, text: string): void =
  fcQTabBar_setTabText(self.h, index, struct_miqt_string(data: text, len: csize_t(len(text))))

proc tabTextColor*(self: gen_qtabbar_types.QTabBar, index: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQTabBar_tabTextColor(self.h, index), owned: true)

proc setTabTextColor*(self: gen_qtabbar_types.QTabBar, index: cint, color: gen_qcolor_types.QColor): void =
  fcQTabBar_setTabTextColor(self.h, index, color.h)

proc tabIcon*(self: gen_qtabbar_types.QTabBar, index: cint): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQTabBar_tabIcon(self.h, index), owned: true)

proc setTabIcon*(self: gen_qtabbar_types.QTabBar, index: cint, icon: gen_qicon_types.QIcon): void =
  fcQTabBar_setTabIcon(self.h, index, icon.h)

proc elideMode*(self: gen_qtabbar_types.QTabBar, ): cint =
  cint(fcQTabBar_elideMode(self.h))

proc setElideMode*(self: gen_qtabbar_types.QTabBar, mode: cint): void =
  fcQTabBar_setElideMode(self.h, cint(mode))

proc setTabToolTip*(self: gen_qtabbar_types.QTabBar, index: cint, tip: string): void =
  fcQTabBar_setTabToolTip(self.h, index, struct_miqt_string(data: tip, len: csize_t(len(tip))))

proc tabToolTip*(self: gen_qtabbar_types.QTabBar, index: cint): string =
  let v_ms = fcQTabBar_tabToolTip(self.h, index)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTabWhatsThis*(self: gen_qtabbar_types.QTabBar, index: cint, text: string): void =
  fcQTabBar_setTabWhatsThis(self.h, index, struct_miqt_string(data: text, len: csize_t(len(text))))

proc tabWhatsThis*(self: gen_qtabbar_types.QTabBar, index: cint): string =
  let v_ms = fcQTabBar_tabWhatsThis(self.h, index)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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

proc currentIndex*(self: gen_qtabbar_types.QTabBar, ): cint =
  fcQTabBar_currentIndex(self.h)

proc count*(self: gen_qtabbar_types.QTabBar, ): cint =
  fcQTabBar_count(self.h)

proc sizeHint*(self: gen_qtabbar_types.QTabBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTabBar_sizeHint(self.h), owned: true)

proc minimumSizeHint*(self: gen_qtabbar_types.QTabBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTabBar_minimumSizeHint(self.h), owned: true)

proc setDrawBase*(self: gen_qtabbar_types.QTabBar, drawTheBase: bool): void =
  fcQTabBar_setDrawBase(self.h, drawTheBase)

proc drawBase*(self: gen_qtabbar_types.QTabBar, ): bool =
  fcQTabBar_drawBase(self.h)

proc iconSize*(self: gen_qtabbar_types.QTabBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTabBar_iconSize(self.h), owned: true)

proc setIconSize*(self: gen_qtabbar_types.QTabBar, size: gen_qsize_types.QSize): void =
  fcQTabBar_setIconSize(self.h, size.h)

proc usesScrollButtons*(self: gen_qtabbar_types.QTabBar, ): bool =
  fcQTabBar_usesScrollButtons(self.h)

proc setUsesScrollButtons*(self: gen_qtabbar_types.QTabBar, useButtons: bool): void =
  fcQTabBar_setUsesScrollButtons(self.h, useButtons)

proc tabsClosable*(self: gen_qtabbar_types.QTabBar, ): bool =
  fcQTabBar_tabsClosable(self.h)

proc setTabsClosable*(self: gen_qtabbar_types.QTabBar, closable: bool): void =
  fcQTabBar_setTabsClosable(self.h, closable)

proc setTabButton*(self: gen_qtabbar_types.QTabBar, index: cint, position: cint, widget: gen_qwidget_types.QWidget): void =
  fcQTabBar_setTabButton(self.h, index, cint(position), widget.h)

proc tabButton*(self: gen_qtabbar_types.QTabBar, index: cint, position: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQTabBar_tabButton(self.h, index, cint(position)), owned: false)

proc selectionBehaviorOnRemove*(self: gen_qtabbar_types.QTabBar, ): cint =
  cint(fcQTabBar_selectionBehaviorOnRemove(self.h))

proc setSelectionBehaviorOnRemove*(self: gen_qtabbar_types.QTabBar, behavior: cint): void =
  fcQTabBar_setSelectionBehaviorOnRemove(self.h, cint(behavior))

proc expanding*(self: gen_qtabbar_types.QTabBar, ): bool =
  fcQTabBar_expanding(self.h)

proc setExpanding*(self: gen_qtabbar_types.QTabBar, enabled: bool): void =
  fcQTabBar_setExpanding(self.h, enabled)

proc isMovable*(self: gen_qtabbar_types.QTabBar, ): bool =
  fcQTabBar_isMovable(self.h)

proc setMovable*(self: gen_qtabbar_types.QTabBar, movable: bool): void =
  fcQTabBar_setMovable(self.h, movable)

proc documentMode*(self: gen_qtabbar_types.QTabBar, ): bool =
  fcQTabBar_documentMode(self.h)

proc setDocumentMode*(self: gen_qtabbar_types.QTabBar, set: bool): void =
  fcQTabBar_setDocumentMode(self.h, set)

proc autoHide*(self: gen_qtabbar_types.QTabBar, ): bool =
  fcQTabBar_autoHide(self.h)

proc setAutoHide*(self: gen_qtabbar_types.QTabBar, hide: bool): void =
  fcQTabBar_setAutoHide(self.h, hide)

proc changeCurrentOnDrag*(self: gen_qtabbar_types.QTabBar, ): bool =
  fcQTabBar_changeCurrentOnDrag(self.h)

proc setChangeCurrentOnDrag*(self: gen_qtabbar_types.QTabBar, change: bool): void =
  fcQTabBar_setChangeCurrentOnDrag(self.h, change)

proc accessibleTabName*(self: gen_qtabbar_types.QTabBar, index: cint): string =
  let v_ms = fcQTabBar_accessibleTabName(self.h, index)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setAccessibleTabName*(self: gen_qtabbar_types.QTabBar, index: cint, name: string): void =
  fcQTabBar_setAccessibleTabName(self.h, index, struct_miqt_string(data: name, len: csize_t(len(name))))

proc setCurrentIndex*(self: gen_qtabbar_types.QTabBar, index: cint): void =
  fcQTabBar_setCurrentIndex(self.h, index)

proc currentChanged*(self: gen_qtabbar_types.QTabBar, index: cint): void =
  fcQTabBar_currentChanged(self.h, index)

type QTabBarcurrentChangedSlot* = proc(index: cint)
proc miqt_exec_callback_cQTabBar_currentChanged(slot: int, index: cint) {.cdecl.} =
  let nimfunc = cast[ptr QTabBarcurrentChangedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc miqt_exec_callback_cQTabBar_currentChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTabBarcurrentChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncurrentChanged*(self: gen_qtabbar_types.QTabBar, slot: QTabBarcurrentChangedSlot) =
  var tmp = new QTabBarcurrentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_connect_currentChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTabBar_currentChanged, miqt_exec_callback_cQTabBar_currentChanged_release)

proc tabCloseRequested*(self: gen_qtabbar_types.QTabBar, index: cint): void =
  fcQTabBar_tabCloseRequested(self.h, index)

type QTabBartabCloseRequestedSlot* = proc(index: cint)
proc miqt_exec_callback_cQTabBar_tabCloseRequested(slot: int, index: cint) {.cdecl.} =
  let nimfunc = cast[ptr QTabBartabCloseRequestedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc miqt_exec_callback_cQTabBar_tabCloseRequested_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTabBartabCloseRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontabCloseRequested*(self: gen_qtabbar_types.QTabBar, slot: QTabBartabCloseRequestedSlot) =
  var tmp = new QTabBartabCloseRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_connect_tabCloseRequested(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTabBar_tabCloseRequested, miqt_exec_callback_cQTabBar_tabCloseRequested_release)

proc tabMoved*(self: gen_qtabbar_types.QTabBar, fromVal: cint, to: cint): void =
  fcQTabBar_tabMoved(self.h, fromVal, to)

type QTabBartabMovedSlot* = proc(fromVal: cint, to: cint)
proc miqt_exec_callback_cQTabBar_tabMoved(slot: int, fromVal: cint, to: cint) {.cdecl.} =
  let nimfunc = cast[ptr QTabBartabMovedSlot](cast[pointer](slot))
  let slotval1 = fromVal

  let slotval2 = to

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQTabBar_tabMoved_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTabBartabMovedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontabMoved*(self: gen_qtabbar_types.QTabBar, slot: QTabBartabMovedSlot) =
  var tmp = new QTabBartabMovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_connect_tabMoved(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTabBar_tabMoved, miqt_exec_callback_cQTabBar_tabMoved_release)

proc tabBarClicked*(self: gen_qtabbar_types.QTabBar, index: cint): void =
  fcQTabBar_tabBarClicked(self.h, index)

type QTabBartabBarClickedSlot* = proc(index: cint)
proc miqt_exec_callback_cQTabBar_tabBarClicked(slot: int, index: cint) {.cdecl.} =
  let nimfunc = cast[ptr QTabBartabBarClickedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc miqt_exec_callback_cQTabBar_tabBarClicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTabBartabBarClickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontabBarClicked*(self: gen_qtabbar_types.QTabBar, slot: QTabBartabBarClickedSlot) =
  var tmp = new QTabBartabBarClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_connect_tabBarClicked(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTabBar_tabBarClicked, miqt_exec_callback_cQTabBar_tabBarClicked_release)

proc tabBarDoubleClicked*(self: gen_qtabbar_types.QTabBar, index: cint): void =
  fcQTabBar_tabBarDoubleClicked(self.h, index)

type QTabBartabBarDoubleClickedSlot* = proc(index: cint)
proc miqt_exec_callback_cQTabBar_tabBarDoubleClicked(slot: int, index: cint) {.cdecl.} =
  let nimfunc = cast[ptr QTabBartabBarDoubleClickedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc miqt_exec_callback_cQTabBar_tabBarDoubleClicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTabBartabBarDoubleClickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontabBarDoubleClicked*(self: gen_qtabbar_types.QTabBar, slot: QTabBartabBarDoubleClickedSlot) =
  var tmp = new QTabBartabBarDoubleClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_connect_tabBarDoubleClicked(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTabBar_tabBarDoubleClicked, miqt_exec_callback_cQTabBar_tabBarDoubleClicked_release)

proc tr*(_: type gen_qtabbar_types.QTabBar, s: cstring, c: cstring): string =
  let v_ms = fcQTabBar_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtabbar_types.QTabBar, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTabBar_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtabbar_types.QTabBar, s: cstring, c: cstring): string =
  let v_ms = fcQTabBar_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtabbar_types.QTabBar, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTabBar_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QTabBarnativeEventProc* = proc(self: QTabBar, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
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
proc QTabBarmetaObject*(self: gen_qtabbar_types.QTabBar, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTabBar_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQTabBar_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTabBarmetacast*(self: gen_qtabbar_types.QTabBar, param1: cstring): pointer =
  fcQTabBar_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQTabBar_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QTabBarmetacall*(self: gen_qtabbar_types.QTabBar, param1: cint, param2: cint, param3: pointer): cint =
  fcQTabBar_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQTabBar_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTabBarsizeHint*(self: gen_qtabbar_types.QTabBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTabBar_virtualbase_sizeHint(self.h), owned: true)

proc miqt_exec_callback_cQTabBar_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTabBarminimumSizeHint*(self: gen_qtabbar_types.QTabBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTabBar_virtualbase_minimumSizeHint(self.h), owned: true)

proc miqt_exec_callback_cQTabBar_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTabBartabSizeHint*(self: gen_qtabbar_types.QTabBar, index: cint): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTabBar_virtualbase_tabSizeHint(self.h, index), owned: true)

proc miqt_exec_callback_cQTabBar_tabSizeHint(vtbl: pointer, self: pointer, index: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].tabSizeHint(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTabBarminimumTabSizeHint*(self: gen_qtabbar_types.QTabBar, index: cint): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTabBar_virtualbase_minimumTabSizeHint(self.h, index), owned: true)

proc miqt_exec_callback_cQTabBar_minimumTabSizeHint(vtbl: pointer, self: pointer, index: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].minimumTabSizeHint(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTabBartabInserted*(self: gen_qtabbar_types.QTabBar, index: cint): void =
  fcQTabBar_virtualbase_tabInserted(self.h, index)

proc miqt_exec_callback_cQTabBar_tabInserted(vtbl: pointer, self: pointer, index: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = index
  vtbl[].tabInserted(self, slotval1)

proc QTabBartabRemoved*(self: gen_qtabbar_types.QTabBar, index: cint): void =
  fcQTabBar_virtualbase_tabRemoved(self.h, index)

proc miqt_exec_callback_cQTabBar_tabRemoved(vtbl: pointer, self: pointer, index: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = index
  vtbl[].tabRemoved(self, slotval1)

proc QTabBartabLayoutChange*(self: gen_qtabbar_types.QTabBar, ): void =
  fcQTabBar_virtualbase_tabLayoutChange(self.h)

proc miqt_exec_callback_cQTabBar_tabLayoutChange(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  vtbl[].tabLayoutChange(self)

proc QTabBarevent*(self: gen_qtabbar_types.QTabBar, param1: gen_qcoreevent_types.QEvent): bool =
  fcQTabBar_virtualbase_event(self.h, param1.h)

proc miqt_exec_callback_cQTabBar_event(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QTabBarresizeEvent*(self: gen_qtabbar_types.QTabBar, param1: gen_qevent_types.QResizeEvent): void =
  fcQTabBar_virtualbase_resizeEvent(self.h, param1.h)

proc miqt_exec_callback_cQTabBar_resizeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QTabBarshowEvent*(self: gen_qtabbar_types.QTabBar, param1: gen_qevent_types.QShowEvent): void =
  fcQTabBar_virtualbase_showEvent(self.h, param1.h)

proc miqt_exec_callback_cQTabBar_showEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QTabBarhideEvent*(self: gen_qtabbar_types.QTabBar, param1: gen_qevent_types.QHideEvent): void =
  fcQTabBar_virtualbase_hideEvent(self.h, param1.h)

proc miqt_exec_callback_cQTabBar_hideEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: param1, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QTabBarpaintEvent*(self: gen_qtabbar_types.QTabBar, param1: gen_qevent_types.QPaintEvent): void =
  fcQTabBar_virtualbase_paintEvent(self.h, param1.h)

proc miqt_exec_callback_cQTabBar_paintEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QTabBarmousePressEvent*(self: gen_qtabbar_types.QTabBar, param1: gen_qevent_types.QMouseEvent): void =
  fcQTabBar_virtualbase_mousePressEvent(self.h, param1.h)

proc miqt_exec_callback_cQTabBar_mousePressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QTabBarmouseMoveEvent*(self: gen_qtabbar_types.QTabBar, param1: gen_qevent_types.QMouseEvent): void =
  fcQTabBar_virtualbase_mouseMoveEvent(self.h, param1.h)

proc miqt_exec_callback_cQTabBar_mouseMoveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QTabBarmouseReleaseEvent*(self: gen_qtabbar_types.QTabBar, param1: gen_qevent_types.QMouseEvent): void =
  fcQTabBar_virtualbase_mouseReleaseEvent(self.h, param1.h)

proc miqt_exec_callback_cQTabBar_mouseReleaseEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QTabBarwheelEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QWheelEvent): void =
  fcQTabBar_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQTabBar_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QTabBarkeyPressEvent*(self: gen_qtabbar_types.QTabBar, param1: gen_qevent_types.QKeyEvent): void =
  fcQTabBar_virtualbase_keyPressEvent(self.h, param1.h)

proc miqt_exec_callback_cQTabBar_keyPressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QTabBarchangeEvent*(self: gen_qtabbar_types.QTabBar, param1: gen_qcoreevent_types.QEvent): void =
  fcQTabBar_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQTabBar_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QTabBartimerEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQTabBar_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQTabBar_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QTabBardevType*(self: gen_qtabbar_types.QTabBar, ): cint =
  fcQTabBar_virtualbase_devType(self.h)

proc miqt_exec_callback_cQTabBar_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QTabBarsetVisible*(self: gen_qtabbar_types.QTabBar, visible: bool): void =
  fcQTabBar_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQTabBar_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QTabBarheightForWidth*(self: gen_qtabbar_types.QTabBar, param1: cint): cint =
  fcQTabBar_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQTabBar_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QTabBarhasHeightForWidth*(self: gen_qtabbar_types.QTabBar, ): bool =
  fcQTabBar_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQTabBar_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QTabBarpaintEngine*(self: gen_qtabbar_types.QTabBar, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQTabBar_virtualbase_paintEngine(self.h), owned: false)

proc miqt_exec_callback_cQTabBar_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTabBarmouseDoubleClickEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QMouseEvent): void =
  fcQTabBar_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQTabBar_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QTabBarkeyReleaseEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QKeyEvent): void =
  fcQTabBar_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQTabBar_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QTabBarfocusInEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QFocusEvent): void =
  fcQTabBar_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQTabBar_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QTabBarfocusOutEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QFocusEvent): void =
  fcQTabBar_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQTabBar_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QTabBarenterEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qcoreevent_types.QEvent): void =
  fcQTabBar_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQTabBar_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QTabBarleaveEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qcoreevent_types.QEvent): void =
  fcQTabBar_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQTabBar_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QTabBarmoveEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QMoveEvent): void =
  fcQTabBar_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQTabBar_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QTabBarcloseEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QCloseEvent): void =
  fcQTabBar_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQTabBar_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QTabBarcontextMenuEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QContextMenuEvent): void =
  fcQTabBar_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQTabBar_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QTabBartabletEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QTabletEvent): void =
  fcQTabBar_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQTabBar_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QTabBaractionEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QActionEvent): void =
  fcQTabBar_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQTabBar_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QTabBardragEnterEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QDragEnterEvent): void =
  fcQTabBar_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQTabBar_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QTabBardragMoveEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QDragMoveEvent): void =
  fcQTabBar_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQTabBar_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QTabBardragLeaveEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQTabBar_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQTabBar_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QTabBardropEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QDropEvent): void =
  fcQTabBar_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQTabBar_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QTabBarnativeEvent*(self: gen_qtabbar_types.QTabBar, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQTabBar_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQTabBar_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTabBarmetric*(self: gen_qtabbar_types.QTabBar, param1: cint): cint =
  fcQTabBar_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQTabBar_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QTabBarinitPainter*(self: gen_qtabbar_types.QTabBar, painter: gen_qpainter_types.QPainter): void =
  fcQTabBar_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQTabBar_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QTabBarredirected*(self: gen_qtabbar_types.QTabBar, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQTabBar_virtualbase_redirected(self.h, offset.h), owned: false)

proc miqt_exec_callback_cQTabBar_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTabBarsharedPainter*(self: gen_qtabbar_types.QTabBar, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQTabBar_virtualbase_sharedPainter(self.h), owned: false)

proc miqt_exec_callback_cQTabBar_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTabBarinputMethodEvent*(self: gen_qtabbar_types.QTabBar, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQTabBar_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQTabBar_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QTabBarinputMethodQuery*(self: gen_qtabbar_types.QTabBar, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTabBar_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc miqt_exec_callback_cQTabBar_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTabBarfocusNextPrevChild*(self: gen_qtabbar_types.QTabBar, next: bool): bool =
  fcQTabBar_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQTabBar_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QTabBareventFilter*(self: gen_qtabbar_types.QTabBar, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTabBar_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQTabBar_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QTabBarchildEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTabBar_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQTabBar_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QTabBarcustomEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qcoreevent_types.QEvent): void =
  fcQTabBar_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQTabBar_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QTabBarconnectNotify*(self: gen_qtabbar_types.QTabBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTabBar_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTabBar_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QTabBardisconnectNotify*(self: gen_qtabbar_types.QTabBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTabBar_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTabBar_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTabBarVTable](vtbl)
  let self = QTabBar(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQTabBar* {.inheritable.} = ref object of QTabBar
  vtbl*: cQTabBarVTable
method metaObject*(self: VirtualQTabBar, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QTabBarmetaObject(self[])
proc miqt_exec_method_cQTabBar_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQTabBar, param1: cstring): pointer {.base.} =
  QTabBarmetacast(self[], param1)
proc miqt_exec_method_cQTabBar_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQTabBar, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QTabBarmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQTabBar_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method sizeHint*(self: VirtualQTabBar, ): gen_qsize_types.QSize {.base.} =
  QTabBarsizeHint(self[])
proc miqt_exec_method_cQTabBar_sizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  var virtualReturn = vtbl.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQTabBar, ): gen_qsize_types.QSize {.base.} =
  QTabBarminimumSizeHint(self[])
proc miqt_exec_method_cQTabBar_minimumSizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  var virtualReturn = vtbl.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method tabSizeHint*(self: VirtualQTabBar, index: cint): gen_qsize_types.QSize {.base.} =
  QTabBartabSizeHint(self[], index)
proc miqt_exec_method_cQTabBar_tabSizeHint(vtbl: pointer, inst: pointer, index: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = index
  var virtualReturn = vtbl.tabSizeHint(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumTabSizeHint*(self: VirtualQTabBar, index: cint): gen_qsize_types.QSize {.base.} =
  QTabBarminimumTabSizeHint(self[], index)
proc miqt_exec_method_cQTabBar_minimumTabSizeHint(vtbl: pointer, inst: pointer, index: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = index
  var virtualReturn = vtbl.minimumTabSizeHint(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method tabInserted*(self: VirtualQTabBar, index: cint): void {.base.} =
  QTabBartabInserted(self[], index)
proc miqt_exec_method_cQTabBar_tabInserted(vtbl: pointer, inst: pointer, index: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = index
  vtbl.tabInserted(slotval1)

method tabRemoved*(self: VirtualQTabBar, index: cint): void {.base.} =
  QTabBartabRemoved(self[], index)
proc miqt_exec_method_cQTabBar_tabRemoved(vtbl: pointer, inst: pointer, index: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = index
  vtbl.tabRemoved(slotval1)

method tabLayoutChange*(self: VirtualQTabBar, ): void {.base.} =
  QTabBartabLayoutChange(self[])
proc miqt_exec_method_cQTabBar_tabLayoutChange(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  vtbl.tabLayoutChange()

method event*(self: VirtualQTabBar, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTabBarevent(self[], param1)
proc miqt_exec_method_cQTabBar_event(vtbl: pointer, inst: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method resizeEvent*(self: VirtualQTabBar, param1: gen_qevent_types.QResizeEvent): void {.base.} =
  QTabBarresizeEvent(self[], param1)
proc miqt_exec_method_cQTabBar_resizeEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  vtbl.resizeEvent(slotval1)

method showEvent*(self: VirtualQTabBar, param1: gen_qevent_types.QShowEvent): void {.base.} =
  QTabBarshowEvent(self[], param1)
proc miqt_exec_method_cQTabBar_showEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  vtbl.showEvent(slotval1)

method hideEvent*(self: VirtualQTabBar, param1: gen_qevent_types.QHideEvent): void {.base.} =
  QTabBarhideEvent(self[], param1)
proc miqt_exec_method_cQTabBar_hideEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qevent_types.QHideEvent(h: param1, owned: false)
  vtbl.hideEvent(slotval1)

method paintEvent*(self: VirtualQTabBar, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QTabBarpaintEvent(self[], param1)
proc miqt_exec_method_cQTabBar_paintEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl.paintEvent(slotval1)

method mousePressEvent*(self: VirtualQTabBar, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QTabBarmousePressEvent(self[], param1)
proc miqt_exec_method_cQTabBar_mousePressEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl.mousePressEvent(slotval1)

method mouseMoveEvent*(self: VirtualQTabBar, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QTabBarmouseMoveEvent(self[], param1)
proc miqt_exec_method_cQTabBar_mouseMoveEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl.mouseMoveEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQTabBar, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QTabBarmouseReleaseEvent(self[], param1)
proc miqt_exec_method_cQTabBar_mouseReleaseEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl.mouseReleaseEvent(slotval1)

method wheelEvent*(self: VirtualQTabBar, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QTabBarwheelEvent(self[], event)
proc miqt_exec_method_cQTabBar_wheelEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl.wheelEvent(slotval1)

method keyPressEvent*(self: VirtualQTabBar, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QTabBarkeyPressEvent(self[], param1)
proc miqt_exec_method_cQTabBar_keyPressEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl.keyPressEvent(slotval1)

method changeEvent*(self: VirtualQTabBar, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QTabBarchangeEvent(self[], param1)
proc miqt_exec_method_cQTabBar_changeEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl.changeEvent(slotval1)

method timerEvent*(self: VirtualQTabBar, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QTabBartimerEvent(self[], event)
proc miqt_exec_method_cQTabBar_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method devType*(self: VirtualQTabBar, ): cint {.base.} =
  QTabBardevType(self[])
proc miqt_exec_method_cQTabBar_devType(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  var virtualReturn = vtbl.devType()
  virtualReturn

method setVisible*(self: VirtualQTabBar, visible: bool): void {.base.} =
  QTabBarsetVisible(self[], visible)
proc miqt_exec_method_cQTabBar_setVisible(vtbl: pointer, inst: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = visible
  vtbl.setVisible(slotval1)

method heightForWidth*(self: VirtualQTabBar, param1: cint): cint {.base.} =
  QTabBarheightForWidth(self[], param1)
proc miqt_exec_method_cQTabBar_heightForWidth(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQTabBar, ): bool {.base.} =
  QTabBarhasHeightForWidth(self[])
proc miqt_exec_method_cQTabBar_hasHeightForWidth(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  var virtualReturn = vtbl.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQTabBar, ): gen_qpaintengine_types.QPaintEngine {.base.} =
  QTabBarpaintEngine(self[])
proc miqt_exec_method_cQTabBar_paintEngine(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  var virtualReturn = vtbl.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mouseDoubleClickEvent*(self: VirtualQTabBar, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QTabBarmouseDoubleClickEvent(self[], event)
proc miqt_exec_method_cQTabBar_mouseDoubleClickEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseDoubleClickEvent(slotval1)

method keyReleaseEvent*(self: VirtualQTabBar, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QTabBarkeyReleaseEvent(self[], event)
proc miqt_exec_method_cQTabBar_keyReleaseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQTabBar, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QTabBarfocusInEvent(self[], event)
proc miqt_exec_method_cQTabBar_focusInEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQTabBar, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QTabBarfocusOutEvent(self[], event)
proc miqt_exec_method_cQTabBar_focusOutEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQTabBar, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTabBarenterEvent(self[], event)
proc miqt_exec_method_cQTabBar_enterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.enterEvent(slotval1)

method leaveEvent*(self: VirtualQTabBar, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTabBarleaveEvent(self[], event)
proc miqt_exec_method_cQTabBar_leaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.leaveEvent(slotval1)

method moveEvent*(self: VirtualQTabBar, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QTabBarmoveEvent(self[], event)
proc miqt_exec_method_cQTabBar_moveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl.moveEvent(slotval1)

method closeEvent*(self: VirtualQTabBar, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QTabBarcloseEvent(self[], event)
proc miqt_exec_method_cQTabBar_closeEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl.closeEvent(slotval1)

method contextMenuEvent*(self: VirtualQTabBar, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QTabBarcontextMenuEvent(self[], event)
proc miqt_exec_method_cQTabBar_contextMenuEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl.contextMenuEvent(slotval1)

method tabletEvent*(self: VirtualQTabBar, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QTabBartabletEvent(self[], event)
proc miqt_exec_method_cQTabBar_tabletEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl.tabletEvent(slotval1)

method actionEvent*(self: VirtualQTabBar, event: gen_qevent_types.QActionEvent): void {.base.} =
  QTabBaractionEvent(self[], event)
proc miqt_exec_method_cQTabBar_actionEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQTabBar, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QTabBardragEnterEvent(self[], event)
proc miqt_exec_method_cQTabBar_dragEnterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQTabBar, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QTabBardragMoveEvent(self[], event)
proc miqt_exec_method_cQTabBar_dragMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQTabBar, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QTabBardragLeaveEvent(self[], event)
proc miqt_exec_method_cQTabBar_dragLeaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQTabBar, event: gen_qevent_types.QDropEvent): void {.base.} =
  QTabBardropEvent(self[], event)
proc miqt_exec_method_cQTabBar_dropEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl.dropEvent(slotval1)

method nativeEvent*(self: VirtualQTabBar, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QTabBarnativeEvent(self[], eventType, message, resultVal)
proc miqt_exec_method_cQTabBar_nativeEvent(vtbl: pointer, inst: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQTabBar, param1: cint): cint {.base.} =
  QTabBarmetric(self[], param1)
proc miqt_exec_method_cQTabBar_metric(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQTabBar, painter: gen_qpainter_types.QPainter): void {.base.} =
  QTabBarinitPainter(self[], painter)
proc miqt_exec_method_cQTabBar_initPainter(vtbl: pointer, inst: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl.initPainter(slotval1)

method redirected*(self: VirtualQTabBar, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QTabBarredirected(self[], offset)
proc miqt_exec_method_cQTabBar_redirected(vtbl: pointer, inst: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQTabBar, ): gen_qpainter_types.QPainter {.base.} =
  QTabBarsharedPainter(self[])
proc miqt_exec_method_cQTabBar_sharedPainter(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  var virtualReturn = vtbl.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQTabBar, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QTabBarinputMethodEvent(self[], param1)
proc miqt_exec_method_cQTabBar_inputMethodEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQTabBar, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QTabBarinputMethodQuery(self[], param1)
proc miqt_exec_method_cQTabBar_inputMethodQuery(vtbl: pointer, inst: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQTabBar, next: bool): bool {.base.} =
  QTabBarfocusNextPrevChild(self[], next)
proc miqt_exec_method_cQTabBar_focusNextPrevChild(vtbl: pointer, inst: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = next
  var virtualReturn = vtbl.focusNextPrevChild(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQTabBar, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTabBareventFilter(self[], watched, event)
proc miqt_exec_method_cQTabBar_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method childEvent*(self: VirtualQTabBar, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QTabBarchildEvent(self[], event)
proc miqt_exec_method_cQTabBar_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQTabBar, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTabBarcustomEvent(self[], event)
proc miqt_exec_method_cQTabBar_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQTabBar, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTabBarconnectNotify(self[], signal)
proc miqt_exec_method_cQTabBar_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQTabBar, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTabBardisconnectNotify(self[], signal)
proc miqt_exec_method_cQTabBar_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTabBar](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc initStyleOption*(self: gen_qtabbar_types.QTabBar, option: gen_qstyleoption_types.QStyleOptionTab, tabIndex: cint): void =
  fcQTabBar_protectedbase_initStyleOption(self.h, option.h, tabIndex)

proc updateMicroFocus*(self: gen_qtabbar_types.QTabBar, ): void =
  fcQTabBar_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qtabbar_types.QTabBar, ): void =
  fcQTabBar_protectedbase_create(self.h)

proc destroy*(self: gen_qtabbar_types.QTabBar, ): void =
  fcQTabBar_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qtabbar_types.QTabBar, ): bool =
  fcQTabBar_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qtabbar_types.QTabBar, ): bool =
  fcQTabBar_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qtabbar_types.QTabBar, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQTabBar_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qtabbar_types.QTabBar, ): cint =
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
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQTabBarVTable, _: ptr cQTabBar) {.cdecl.} =
    let vtbl = cast[ref QTabBarVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTabBar_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTabBar_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTabBar_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQTabBar_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQTabBar_minimumSizeHint
  if not isNil(vtbl[].tabSizeHint):
    vtbl[].vtbl.tabSizeHint = miqt_exec_callback_cQTabBar_tabSizeHint
  if not isNil(vtbl[].minimumTabSizeHint):
    vtbl[].vtbl.minimumTabSizeHint = miqt_exec_callback_cQTabBar_minimumTabSizeHint
  if not isNil(vtbl[].tabInserted):
    vtbl[].vtbl.tabInserted = miqt_exec_callback_cQTabBar_tabInserted
  if not isNil(vtbl[].tabRemoved):
    vtbl[].vtbl.tabRemoved = miqt_exec_callback_cQTabBar_tabRemoved
  if not isNil(vtbl[].tabLayoutChange):
    vtbl[].vtbl.tabLayoutChange = miqt_exec_callback_cQTabBar_tabLayoutChange
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTabBar_event
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQTabBar_resizeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQTabBar_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQTabBar_hideEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQTabBar_paintEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQTabBar_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQTabBar_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQTabBar_mouseReleaseEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQTabBar_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQTabBar_keyPressEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQTabBar_changeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTabBar_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQTabBar_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQTabBar_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQTabBar_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQTabBar_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQTabBar_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQTabBar_mouseDoubleClickEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQTabBar_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQTabBar_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQTabBar_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQTabBar_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQTabBar_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQTabBar_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQTabBar_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQTabBar_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQTabBar_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQTabBar_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQTabBar_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQTabBar_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQTabBar_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQTabBar_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQTabBar_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQTabBar_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQTabBar_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQTabBar_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQTabBar_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQTabBar_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQTabBar_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQTabBar_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTabBar_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTabBar_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTabBar_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTabBar_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTabBar_disconnectNotify
  gen_qtabbar_types.QTabBar(h: fcQTabBar_new(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qtabbar_types.QTabBar,
    vtbl: ref QTabBarVTable = nil): gen_qtabbar_types.QTabBar =
  let vtbl = if vtbl == nil: new QTabBarVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQTabBarVTable, _: ptr cQTabBar) {.cdecl.} =
    let vtbl = cast[ref QTabBarVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTabBar_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTabBar_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTabBar_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQTabBar_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQTabBar_minimumSizeHint
  if not isNil(vtbl[].tabSizeHint):
    vtbl[].vtbl.tabSizeHint = miqt_exec_callback_cQTabBar_tabSizeHint
  if not isNil(vtbl[].minimumTabSizeHint):
    vtbl[].vtbl.minimumTabSizeHint = miqt_exec_callback_cQTabBar_minimumTabSizeHint
  if not isNil(vtbl[].tabInserted):
    vtbl[].vtbl.tabInserted = miqt_exec_callback_cQTabBar_tabInserted
  if not isNil(vtbl[].tabRemoved):
    vtbl[].vtbl.tabRemoved = miqt_exec_callback_cQTabBar_tabRemoved
  if not isNil(vtbl[].tabLayoutChange):
    vtbl[].vtbl.tabLayoutChange = miqt_exec_callback_cQTabBar_tabLayoutChange
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTabBar_event
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQTabBar_resizeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQTabBar_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQTabBar_hideEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQTabBar_paintEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQTabBar_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQTabBar_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQTabBar_mouseReleaseEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQTabBar_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQTabBar_keyPressEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQTabBar_changeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTabBar_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQTabBar_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQTabBar_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQTabBar_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQTabBar_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQTabBar_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQTabBar_mouseDoubleClickEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQTabBar_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQTabBar_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQTabBar_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQTabBar_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQTabBar_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQTabBar_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQTabBar_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQTabBar_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQTabBar_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQTabBar_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQTabBar_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQTabBar_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQTabBar_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQTabBar_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQTabBar_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQTabBar_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQTabBar_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQTabBar_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQTabBar_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQTabBar_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQTabBar_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQTabBar_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTabBar_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTabBar_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTabBar_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTabBar_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTabBar_disconnectNotify
  gen_qtabbar_types.QTabBar(h: fcQTabBar_new2(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qtabbar_types.QTabBar,
    parent: gen_qwidget_types.QWidget,
    vtbl: VirtualQTabBar) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQTabBarVTable, _: ptr cQTabBar) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQTabBar()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQTabBar_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQTabBar_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQTabBar_metacall
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQTabBar_sizeHint
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQTabBar_minimumSizeHint
  vtbl[].vtbl.tabSizeHint = miqt_exec_method_cQTabBar_tabSizeHint
  vtbl[].vtbl.minimumTabSizeHint = miqt_exec_method_cQTabBar_minimumTabSizeHint
  vtbl[].vtbl.tabInserted = miqt_exec_method_cQTabBar_tabInserted
  vtbl[].vtbl.tabRemoved = miqt_exec_method_cQTabBar_tabRemoved
  vtbl[].vtbl.tabLayoutChange = miqt_exec_method_cQTabBar_tabLayoutChange
  vtbl[].vtbl.event = miqt_exec_method_cQTabBar_event
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQTabBar_resizeEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQTabBar_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQTabBar_hideEvent
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQTabBar_paintEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQTabBar_mousePressEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQTabBar_mouseMoveEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQTabBar_mouseReleaseEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQTabBar_wheelEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQTabBar_keyPressEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQTabBar_changeEvent
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQTabBar_timerEvent
  vtbl[].vtbl.devType = miqt_exec_method_cQTabBar_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQTabBar_setVisible
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQTabBar_heightForWidth
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQTabBar_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQTabBar_paintEngine
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQTabBar_mouseDoubleClickEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQTabBar_keyReleaseEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQTabBar_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQTabBar_focusOutEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQTabBar_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQTabBar_leaveEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQTabBar_moveEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQTabBar_closeEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQTabBar_contextMenuEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQTabBar_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQTabBar_actionEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQTabBar_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQTabBar_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQTabBar_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQTabBar_dropEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQTabBar_nativeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQTabBar_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQTabBar_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQTabBar_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQTabBar_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQTabBar_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQTabBar_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQTabBar_focusNextPrevChild
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQTabBar_eventFilter
  vtbl[].vtbl.childEvent = miqt_exec_method_cQTabBar_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQTabBar_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQTabBar_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQTabBar_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQTabBar_new(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qtabbar_types.QTabBar,
    vtbl: VirtualQTabBar) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQTabBarVTable, _: ptr cQTabBar) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQTabBar()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQTabBar, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQTabBar_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQTabBar_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQTabBar_metacall
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQTabBar_sizeHint
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQTabBar_minimumSizeHint
  vtbl[].vtbl.tabSizeHint = miqt_exec_method_cQTabBar_tabSizeHint
  vtbl[].vtbl.minimumTabSizeHint = miqt_exec_method_cQTabBar_minimumTabSizeHint
  vtbl[].vtbl.tabInserted = miqt_exec_method_cQTabBar_tabInserted
  vtbl[].vtbl.tabRemoved = miqt_exec_method_cQTabBar_tabRemoved
  vtbl[].vtbl.tabLayoutChange = miqt_exec_method_cQTabBar_tabLayoutChange
  vtbl[].vtbl.event = miqt_exec_method_cQTabBar_event
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQTabBar_resizeEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQTabBar_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQTabBar_hideEvent
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQTabBar_paintEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQTabBar_mousePressEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQTabBar_mouseMoveEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQTabBar_mouseReleaseEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQTabBar_wheelEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQTabBar_keyPressEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQTabBar_changeEvent
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQTabBar_timerEvent
  vtbl[].vtbl.devType = miqt_exec_method_cQTabBar_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQTabBar_setVisible
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQTabBar_heightForWidth
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQTabBar_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQTabBar_paintEngine
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQTabBar_mouseDoubleClickEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQTabBar_keyReleaseEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQTabBar_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQTabBar_focusOutEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQTabBar_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQTabBar_leaveEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQTabBar_moveEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQTabBar_closeEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQTabBar_contextMenuEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQTabBar_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQTabBar_actionEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQTabBar_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQTabBar_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQTabBar_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQTabBar_dropEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQTabBar_nativeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQTabBar_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQTabBar_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQTabBar_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQTabBar_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQTabBar_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQTabBar_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQTabBar_focusNextPrevChild
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQTabBar_eventFilter
  vtbl[].vtbl.childEvent = miqt_exec_method_cQTabBar_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQTabBar_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQTabBar_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQTabBar_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQTabBar_new2(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qtabbar_types.QTabBar): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTabBar_staticMetaObject())
