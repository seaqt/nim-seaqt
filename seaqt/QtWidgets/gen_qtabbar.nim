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

proc fcQTabBar_new(parent: pointer): ptr cQTabBar {.importc: "QTabBar_new".}
proc fcQTabBar_new2(): ptr cQTabBar {.importc: "QTabBar_new2".}
proc fcQTabBar_metaObject(self: pointer, ): pointer {.importc: "QTabBar_metaObject".}
proc fcQTabBar_metacast(self: pointer, param1: cstring): pointer {.importc: "QTabBar_metacast".}
proc fcQTabBar_tr(s: cstring): struct_miqt_string {.importc: "QTabBar_tr".}
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
proc fcQTabBar_connect_currentChanged(self: pointer, slot: int) {.importc: "QTabBar_connect_currentChanged".}
proc fcQTabBar_tabCloseRequested(self: pointer, index: cint): void {.importc: "QTabBar_tabCloseRequested".}
proc fcQTabBar_connect_tabCloseRequested(self: pointer, slot: int) {.importc: "QTabBar_connect_tabCloseRequested".}
proc fcQTabBar_tabMoved(self: pointer, fromVal: cint, to: cint): void {.importc: "QTabBar_tabMoved".}
proc fcQTabBar_connect_tabMoved(self: pointer, slot: int) {.importc: "QTabBar_connect_tabMoved".}
proc fcQTabBar_tabBarClicked(self: pointer, index: cint): void {.importc: "QTabBar_tabBarClicked".}
proc fcQTabBar_connect_tabBarClicked(self: pointer, slot: int) {.importc: "QTabBar_connect_tabBarClicked".}
proc fcQTabBar_tabBarDoubleClicked(self: pointer, index: cint): void {.importc: "QTabBar_tabBarDoubleClicked".}
proc fcQTabBar_connect_tabBarDoubleClicked(self: pointer, slot: int) {.importc: "QTabBar_connect_tabBarDoubleClicked".}
proc fcQTabBar_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTabBar_tr2".}
proc fcQTabBar_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTabBar_tr3".}
proc fQTabBar_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QTabBar_virtualbase_sizeHint".}
proc fcQTabBar_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_sizeHint".}
proc fQTabBar_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QTabBar_virtualbase_minimumSizeHint".}
proc fcQTabBar_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_minimumSizeHint".}
proc fQTabBar_virtualbase_tabSizeHint(self: pointer, index: cint): pointer{.importc: "QTabBar_virtualbase_tabSizeHint".}
proc fcQTabBar_override_virtual_tabSizeHint(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_tabSizeHint".}
proc fQTabBar_virtualbase_minimumTabSizeHint(self: pointer, index: cint): pointer{.importc: "QTabBar_virtualbase_minimumTabSizeHint".}
proc fcQTabBar_override_virtual_minimumTabSizeHint(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_minimumTabSizeHint".}
proc fQTabBar_virtualbase_tabInserted(self: pointer, index: cint): void{.importc: "QTabBar_virtualbase_tabInserted".}
proc fcQTabBar_override_virtual_tabInserted(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_tabInserted".}
proc fQTabBar_virtualbase_tabRemoved(self: pointer, index: cint): void{.importc: "QTabBar_virtualbase_tabRemoved".}
proc fcQTabBar_override_virtual_tabRemoved(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_tabRemoved".}
proc fQTabBar_virtualbase_tabLayoutChange(self: pointer, ): void{.importc: "QTabBar_virtualbase_tabLayoutChange".}
proc fcQTabBar_override_virtual_tabLayoutChange(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_tabLayoutChange".}
proc fQTabBar_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QTabBar_virtualbase_event".}
proc fcQTabBar_override_virtual_event(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_event".}
proc fQTabBar_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QTabBar_virtualbase_resizeEvent".}
proc fcQTabBar_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_resizeEvent".}
proc fQTabBar_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QTabBar_virtualbase_showEvent".}
proc fcQTabBar_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_showEvent".}
proc fQTabBar_virtualbase_hideEvent(self: pointer, param1: pointer): void{.importc: "QTabBar_virtualbase_hideEvent".}
proc fcQTabBar_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_hideEvent".}
proc fQTabBar_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QTabBar_virtualbase_paintEvent".}
proc fcQTabBar_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_paintEvent".}
proc fQTabBar_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QTabBar_virtualbase_mousePressEvent".}
proc fcQTabBar_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_mousePressEvent".}
proc fQTabBar_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QTabBar_virtualbase_mouseMoveEvent".}
proc fcQTabBar_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_mouseMoveEvent".}
proc fQTabBar_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void{.importc: "QTabBar_virtualbase_mouseReleaseEvent".}
proc fcQTabBar_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_mouseReleaseEvent".}
proc fQTabBar_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void{.importc: "QTabBar_virtualbase_mouseDoubleClickEvent".}
proc fcQTabBar_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_mouseDoubleClickEvent".}
proc fQTabBar_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_wheelEvent".}
proc fcQTabBar_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_wheelEvent".}
proc fQTabBar_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QTabBar_virtualbase_keyPressEvent".}
proc fcQTabBar_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_keyPressEvent".}
proc fQTabBar_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QTabBar_virtualbase_changeEvent".}
proc fcQTabBar_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_changeEvent".}
proc fQTabBar_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_timerEvent".}
proc fcQTabBar_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_timerEvent".}
proc fQTabBar_virtualbase_initStyleOption(self: pointer, option: pointer, tabIndex: cint): void{.importc: "QTabBar_virtualbase_initStyleOption".}
proc fcQTabBar_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_initStyleOption".}
proc fQTabBar_virtualbase_devType(self: pointer, ): cint{.importc: "QTabBar_virtualbase_devType".}
proc fcQTabBar_override_virtual_devType(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_devType".}
proc fQTabBar_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QTabBar_virtualbase_setVisible".}
proc fcQTabBar_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_setVisible".}
proc fQTabBar_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QTabBar_virtualbase_heightForWidth".}
proc fcQTabBar_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_heightForWidth".}
proc fQTabBar_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QTabBar_virtualbase_hasHeightForWidth".}
proc fcQTabBar_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_hasHeightForWidth".}
proc fQTabBar_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QTabBar_virtualbase_paintEngine".}
proc fcQTabBar_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_paintEngine".}
proc fQTabBar_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_keyReleaseEvent".}
proc fcQTabBar_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_keyReleaseEvent".}
proc fQTabBar_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_focusInEvent".}
proc fcQTabBar_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_focusInEvent".}
proc fQTabBar_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_focusOutEvent".}
proc fcQTabBar_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_focusOutEvent".}
proc fQTabBar_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_enterEvent".}
proc fcQTabBar_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_enterEvent".}
proc fQTabBar_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_leaveEvent".}
proc fcQTabBar_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_leaveEvent".}
proc fQTabBar_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_moveEvent".}
proc fcQTabBar_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_moveEvent".}
proc fQTabBar_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_closeEvent".}
proc fcQTabBar_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_closeEvent".}
proc fQTabBar_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_contextMenuEvent".}
proc fcQTabBar_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_contextMenuEvent".}
proc fQTabBar_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_tabletEvent".}
proc fcQTabBar_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_tabletEvent".}
proc fQTabBar_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_actionEvent".}
proc fcQTabBar_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_actionEvent".}
proc fQTabBar_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_dragEnterEvent".}
proc fcQTabBar_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_dragEnterEvent".}
proc fQTabBar_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_dragMoveEvent".}
proc fcQTabBar_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_dragMoveEvent".}
proc fQTabBar_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_dragLeaveEvent".}
proc fcQTabBar_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_dragLeaveEvent".}
proc fQTabBar_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_dropEvent".}
proc fcQTabBar_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_dropEvent".}
proc fQTabBar_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QTabBar_virtualbase_nativeEvent".}
proc fcQTabBar_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_nativeEvent".}
proc fQTabBar_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QTabBar_virtualbase_metric".}
proc fcQTabBar_override_virtual_metric(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_metric".}
proc fQTabBar_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QTabBar_virtualbase_initPainter".}
proc fcQTabBar_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_initPainter".}
proc fQTabBar_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QTabBar_virtualbase_redirected".}
proc fcQTabBar_override_virtual_redirected(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_redirected".}
proc fQTabBar_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QTabBar_virtualbase_sharedPainter".}
proc fcQTabBar_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_sharedPainter".}
proc fQTabBar_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QTabBar_virtualbase_inputMethodEvent".}
proc fcQTabBar_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_inputMethodEvent".}
proc fQTabBar_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QTabBar_virtualbase_inputMethodQuery".}
proc fcQTabBar_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_inputMethodQuery".}
proc fQTabBar_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QTabBar_virtualbase_focusNextPrevChild".}
proc fcQTabBar_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_focusNextPrevChild".}
proc fQTabBar_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QTabBar_virtualbase_eventFilter".}
proc fcQTabBar_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_eventFilter".}
proc fQTabBar_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_childEvent".}
proc fcQTabBar_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_childEvent".}
proc fQTabBar_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_customEvent".}
proc fcQTabBar_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_customEvent".}
proc fQTabBar_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTabBar_virtualbase_connectNotify".}
proc fcQTabBar_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_connectNotify".}
proc fQTabBar_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTabBar_virtualbase_disconnectNotify".}
proc fcQTabBar_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_disconnectNotify".}
proc fcQTabBar_delete(self: pointer) {.importc: "QTabBar_delete".}


func init*(T: type gen_qtabbar_types.QTabBar, h: ptr cQTabBar): gen_qtabbar_types.QTabBar =
  T(h: h)
proc create*(T: type gen_qtabbar_types.QTabBar, parent: gen_qwidget_types.QWidget): gen_qtabbar_types.QTabBar =
  gen_qtabbar_types.QTabBar.init(fcQTabBar_new(parent.h))

proc create*(T: type gen_qtabbar_types.QTabBar, ): gen_qtabbar_types.QTabBar =
  gen_qtabbar_types.QTabBar.init(fcQTabBar_new2())

proc metaObject*(self: gen_qtabbar_types.QTabBar, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTabBar_metaObject(self.h))

proc metacast*(self: gen_qtabbar_types.QTabBar, param1: cstring): pointer =
  fcQTabBar_metacast(self.h, param1)

proc tr*(_: type gen_qtabbar_types.QTabBar, s: cstring): string =
  let v_ms = fcQTabBar_tr(s)
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
  gen_qcolor_types.QColor(h: fcQTabBar_tabTextColor(self.h, index))

proc setTabTextColor*(self: gen_qtabbar_types.QTabBar, index: cint, color: gen_qcolor_types.QColor): void =
  fcQTabBar_setTabTextColor(self.h, index, color.h)

proc tabIcon*(self: gen_qtabbar_types.QTabBar, index: cint): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQTabBar_tabIcon(self.h, index))

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
  gen_qvariant_types.QVariant(h: fcQTabBar_tabData(self.h, index))

proc tabRect*(self: gen_qtabbar_types.QTabBar, index: cint): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQTabBar_tabRect(self.h, index))

proc tabAt*(self: gen_qtabbar_types.QTabBar, pos: gen_qpoint_types.QPoint): cint =
  fcQTabBar_tabAt(self.h, pos.h)

proc currentIndex*(self: gen_qtabbar_types.QTabBar, ): cint =
  fcQTabBar_currentIndex(self.h)

proc count*(self: gen_qtabbar_types.QTabBar, ): cint =
  fcQTabBar_count(self.h)

proc sizeHint*(self: gen_qtabbar_types.QTabBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTabBar_sizeHint(self.h))

proc minimumSizeHint*(self: gen_qtabbar_types.QTabBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTabBar_minimumSizeHint(self.h))

proc setDrawBase*(self: gen_qtabbar_types.QTabBar, drawTheBase: bool): void =
  fcQTabBar_setDrawBase(self.h, drawTheBase)

proc drawBase*(self: gen_qtabbar_types.QTabBar, ): bool =
  fcQTabBar_drawBase(self.h)

proc iconSize*(self: gen_qtabbar_types.QTabBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTabBar_iconSize(self.h))

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
  gen_qwidget_types.QWidget(h: fcQTabBar_tabButton(self.h, index, cint(position)))

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
proc miqt_exec_callback_QTabBar_currentChanged(slot: int, index: cint) {.exportc.} =
  let nimfunc = cast[ptr QTabBarcurrentChangedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc oncurrentChanged*(self: gen_qtabbar_types.QTabBar, slot: QTabBarcurrentChangedSlot) =
  var tmp = new QTabBarcurrentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_connect_currentChanged(self.h, cast[int](addr tmp[]))

proc tabCloseRequested*(self: gen_qtabbar_types.QTabBar, index: cint): void =
  fcQTabBar_tabCloseRequested(self.h, index)

type QTabBartabCloseRequestedSlot* = proc(index: cint)
proc miqt_exec_callback_QTabBar_tabCloseRequested(slot: int, index: cint) {.exportc.} =
  let nimfunc = cast[ptr QTabBartabCloseRequestedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc ontabCloseRequested*(self: gen_qtabbar_types.QTabBar, slot: QTabBartabCloseRequestedSlot) =
  var tmp = new QTabBartabCloseRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_connect_tabCloseRequested(self.h, cast[int](addr tmp[]))

proc tabMoved*(self: gen_qtabbar_types.QTabBar, fromVal: cint, to: cint): void =
  fcQTabBar_tabMoved(self.h, fromVal, to)

type QTabBartabMovedSlot* = proc(fromVal: cint, to: cint)
proc miqt_exec_callback_QTabBar_tabMoved(slot: int, fromVal: cint, to: cint) {.exportc.} =
  let nimfunc = cast[ptr QTabBartabMovedSlot](cast[pointer](slot))
  let slotval1 = fromVal

  let slotval2 = to

  nimfunc[](slotval1, slotval2)

proc ontabMoved*(self: gen_qtabbar_types.QTabBar, slot: QTabBartabMovedSlot) =
  var tmp = new QTabBartabMovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_connect_tabMoved(self.h, cast[int](addr tmp[]))

proc tabBarClicked*(self: gen_qtabbar_types.QTabBar, index: cint): void =
  fcQTabBar_tabBarClicked(self.h, index)

type QTabBartabBarClickedSlot* = proc(index: cint)
proc miqt_exec_callback_QTabBar_tabBarClicked(slot: int, index: cint) {.exportc.} =
  let nimfunc = cast[ptr QTabBartabBarClickedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc ontabBarClicked*(self: gen_qtabbar_types.QTabBar, slot: QTabBartabBarClickedSlot) =
  var tmp = new QTabBartabBarClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_connect_tabBarClicked(self.h, cast[int](addr tmp[]))

proc tabBarDoubleClicked*(self: gen_qtabbar_types.QTabBar, index: cint): void =
  fcQTabBar_tabBarDoubleClicked(self.h, index)

type QTabBartabBarDoubleClickedSlot* = proc(index: cint)
proc miqt_exec_callback_QTabBar_tabBarDoubleClicked(slot: int, index: cint) {.exportc.} =
  let nimfunc = cast[ptr QTabBartabBarDoubleClickedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc ontabBarDoubleClicked*(self: gen_qtabbar_types.QTabBar, slot: QTabBartabBarDoubleClickedSlot) =
  var tmp = new QTabBartabBarDoubleClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_connect_tabBarDoubleClicked(self.h, cast[int](addr tmp[]))

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

proc QTabBarsizeHint*(self: gen_qtabbar_types.QTabBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQTabBar_virtualbase_sizeHint(self.h))

type QTabBarsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qtabbar_types.QTabBar, slot: QTabBarsizeHintProc) =
  # TODO check subclass
  var tmp = new QTabBarsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_sizeHint(self: ptr cQTabBar, slot: int): pointer {.exportc: "miqt_exec_callback_QTabBar_sizeHint ".} =
  var nimfunc = cast[ptr QTabBarsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTabBarminimumSizeHint*(self: gen_qtabbar_types.QTabBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQTabBar_virtualbase_minimumSizeHint(self.h))

type QTabBarminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qtabbar_types.QTabBar, slot: QTabBarminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QTabBarminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_minimumSizeHint(self: ptr cQTabBar, slot: int): pointer {.exportc: "miqt_exec_callback_QTabBar_minimumSizeHint ".} =
  var nimfunc = cast[ptr QTabBarminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTabBartabSizeHint*(self: gen_qtabbar_types.QTabBar, index: cint): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQTabBar_virtualbase_tabSizeHint(self.h, index))

type QTabBartabSizeHintProc* = proc(index: cint): gen_qsize_types.QSize
proc ontabSizeHint*(self: gen_qtabbar_types.QTabBar, slot: QTabBartabSizeHintProc) =
  # TODO check subclass
  var tmp = new QTabBartabSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_tabSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_tabSizeHint(self: ptr cQTabBar, slot: int, index: cint): pointer {.exportc: "miqt_exec_callback_QTabBar_tabSizeHint ".} =
  var nimfunc = cast[ptr QTabBartabSizeHintProc](cast[pointer](slot))
  let slotval1 = index


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTabBarminimumTabSizeHint*(self: gen_qtabbar_types.QTabBar, index: cint): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQTabBar_virtualbase_minimumTabSizeHint(self.h, index))

type QTabBarminimumTabSizeHintProc* = proc(index: cint): gen_qsize_types.QSize
proc onminimumTabSizeHint*(self: gen_qtabbar_types.QTabBar, slot: QTabBarminimumTabSizeHintProc) =
  # TODO check subclass
  var tmp = new QTabBarminimumTabSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_minimumTabSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_minimumTabSizeHint(self: ptr cQTabBar, slot: int, index: cint): pointer {.exportc: "miqt_exec_callback_QTabBar_minimumTabSizeHint ".} =
  var nimfunc = cast[ptr QTabBarminimumTabSizeHintProc](cast[pointer](slot))
  let slotval1 = index


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTabBartabInserted*(self: gen_qtabbar_types.QTabBar, index: cint): void =
  fQTabBar_virtualbase_tabInserted(self.h, index)

type QTabBartabInsertedProc* = proc(index: cint): void
proc ontabInserted*(self: gen_qtabbar_types.QTabBar, slot: QTabBartabInsertedProc) =
  # TODO check subclass
  var tmp = new QTabBartabInsertedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_tabInserted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_tabInserted(self: ptr cQTabBar, slot: int, index: cint): void {.exportc: "miqt_exec_callback_QTabBar_tabInserted ".} =
  var nimfunc = cast[ptr QTabBartabInsertedProc](cast[pointer](slot))
  let slotval1 = index


  nimfunc[](slotval1)
proc QTabBartabRemoved*(self: gen_qtabbar_types.QTabBar, index: cint): void =
  fQTabBar_virtualbase_tabRemoved(self.h, index)

type QTabBartabRemovedProc* = proc(index: cint): void
proc ontabRemoved*(self: gen_qtabbar_types.QTabBar, slot: QTabBartabRemovedProc) =
  # TODO check subclass
  var tmp = new QTabBartabRemovedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_tabRemoved(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_tabRemoved(self: ptr cQTabBar, slot: int, index: cint): void {.exportc: "miqt_exec_callback_QTabBar_tabRemoved ".} =
  var nimfunc = cast[ptr QTabBartabRemovedProc](cast[pointer](slot))
  let slotval1 = index


  nimfunc[](slotval1)
proc QTabBartabLayoutChange*(self: gen_qtabbar_types.QTabBar, ): void =
  fQTabBar_virtualbase_tabLayoutChange(self.h)

type QTabBartabLayoutChangeProc* = proc(): void
proc ontabLayoutChange*(self: gen_qtabbar_types.QTabBar, slot: QTabBartabLayoutChangeProc) =
  # TODO check subclass
  var tmp = new QTabBartabLayoutChangeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_tabLayoutChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_tabLayoutChange(self: ptr cQTabBar, slot: int): void {.exportc: "miqt_exec_callback_QTabBar_tabLayoutChange ".} =
  var nimfunc = cast[ptr QTabBartabLayoutChangeProc](cast[pointer](slot))

  nimfunc[]()
proc QTabBarevent*(self: gen_qtabbar_types.QTabBar, param1: gen_qcoreevent_types.QEvent): bool =
  fQTabBar_virtualbase_event(self.h, param1.h)

type QTabBareventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qtabbar_types.QTabBar, slot: QTabBareventProc) =
  # TODO check subclass
  var tmp = new QTabBareventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_event(self: ptr cQTabBar, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QTabBar_event ".} =
  var nimfunc = cast[ptr QTabBareventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTabBarresizeEvent*(self: gen_qtabbar_types.QTabBar, param1: gen_qevent_types.QResizeEvent): void =
  fQTabBar_virtualbase_resizeEvent(self.h, param1.h)

type QTabBarresizeEventProc* = proc(param1: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qtabbar_types.QTabBar, slot: QTabBarresizeEventProc) =
  # TODO check subclass
  var tmp = new QTabBarresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_resizeEvent(self: ptr cQTabBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTabBar_resizeEvent ".} =
  var nimfunc = cast[ptr QTabBarresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)


  nimfunc[](slotval1)
proc QTabBarshowEvent*(self: gen_qtabbar_types.QTabBar, param1: gen_qevent_types.QShowEvent): void =
  fQTabBar_virtualbase_showEvent(self.h, param1.h)

type QTabBarshowEventProc* = proc(param1: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qtabbar_types.QTabBar, slot: QTabBarshowEventProc) =
  # TODO check subclass
  var tmp = new QTabBarshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_showEvent(self: ptr cQTabBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTabBar_showEvent ".} =
  var nimfunc = cast[ptr QTabBarshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)


  nimfunc[](slotval1)
proc QTabBarhideEvent*(self: gen_qtabbar_types.QTabBar, param1: gen_qevent_types.QHideEvent): void =
  fQTabBar_virtualbase_hideEvent(self.h, param1.h)

type QTabBarhideEventProc* = proc(param1: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qtabbar_types.QTabBar, slot: QTabBarhideEventProc) =
  # TODO check subclass
  var tmp = new QTabBarhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_hideEvent(self: ptr cQTabBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTabBar_hideEvent ".} =
  var nimfunc = cast[ptr QTabBarhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: param1)


  nimfunc[](slotval1)
proc QTabBarpaintEvent*(self: gen_qtabbar_types.QTabBar, param1: gen_qevent_types.QPaintEvent): void =
  fQTabBar_virtualbase_paintEvent(self.h, param1.h)

type QTabBarpaintEventProc* = proc(param1: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qtabbar_types.QTabBar, slot: QTabBarpaintEventProc) =
  # TODO check subclass
  var tmp = new QTabBarpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_paintEvent(self: ptr cQTabBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTabBar_paintEvent ".} =
  var nimfunc = cast[ptr QTabBarpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)


  nimfunc[](slotval1)
proc QTabBarmousePressEvent*(self: gen_qtabbar_types.QTabBar, param1: gen_qevent_types.QMouseEvent): void =
  fQTabBar_virtualbase_mousePressEvent(self.h, param1.h)

type QTabBarmousePressEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qtabbar_types.QTabBar, slot: QTabBarmousePressEventProc) =
  # TODO check subclass
  var tmp = new QTabBarmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_mousePressEvent(self: ptr cQTabBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTabBar_mousePressEvent ".} =
  var nimfunc = cast[ptr QTabBarmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QTabBarmouseMoveEvent*(self: gen_qtabbar_types.QTabBar, param1: gen_qevent_types.QMouseEvent): void =
  fQTabBar_virtualbase_mouseMoveEvent(self.h, param1.h)

type QTabBarmouseMoveEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qtabbar_types.QTabBar, slot: QTabBarmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QTabBarmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_mouseMoveEvent(self: ptr cQTabBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTabBar_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QTabBarmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QTabBarmouseReleaseEvent*(self: gen_qtabbar_types.QTabBar, param1: gen_qevent_types.QMouseEvent): void =
  fQTabBar_virtualbase_mouseReleaseEvent(self.h, param1.h)

type QTabBarmouseReleaseEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qtabbar_types.QTabBar, slot: QTabBarmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QTabBarmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_mouseReleaseEvent(self: ptr cQTabBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTabBar_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QTabBarmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QTabBarmouseDoubleClickEvent*(self: gen_qtabbar_types.QTabBar, param1: gen_qevent_types.QMouseEvent): void =
  fQTabBar_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

type QTabBarmouseDoubleClickEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qtabbar_types.QTabBar, slot: QTabBarmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QTabBarmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_mouseDoubleClickEvent(self: ptr cQTabBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTabBar_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QTabBarmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QTabBarwheelEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QWheelEvent): void =
  fQTabBar_virtualbase_wheelEvent(self.h, event.h)

type QTabBarwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qtabbar_types.QTabBar, slot: QTabBarwheelEventProc) =
  # TODO check subclass
  var tmp = new QTabBarwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_wheelEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_wheelEvent ".} =
  var nimfunc = cast[ptr QTabBarwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QTabBarkeyPressEvent*(self: gen_qtabbar_types.QTabBar, param1: gen_qevent_types.QKeyEvent): void =
  fQTabBar_virtualbase_keyPressEvent(self.h, param1.h)

type QTabBarkeyPressEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qtabbar_types.QTabBar, slot: QTabBarkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QTabBarkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_keyPressEvent(self: ptr cQTabBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTabBar_keyPressEvent ".} =
  var nimfunc = cast[ptr QTabBarkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QTabBarchangeEvent*(self: gen_qtabbar_types.QTabBar, param1: gen_qcoreevent_types.QEvent): void =
  fQTabBar_virtualbase_changeEvent(self.h, param1.h)

type QTabBarchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qtabbar_types.QTabBar, slot: QTabBarchangeEventProc) =
  # TODO check subclass
  var tmp = new QTabBarchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_changeEvent(self: ptr cQTabBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTabBar_changeEvent ".} =
  var nimfunc = cast[ptr QTabBarchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QTabBartimerEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qcoreevent_types.QTimerEvent): void =
  fQTabBar_virtualbase_timerEvent(self.h, event.h)

type QTabBartimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qtabbar_types.QTabBar, slot: QTabBartimerEventProc) =
  # TODO check subclass
  var tmp = new QTabBartimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_timerEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_timerEvent ".} =
  var nimfunc = cast[ptr QTabBartimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QTabBarinitStyleOption*(self: gen_qtabbar_types.QTabBar, option: gen_qstyleoption_types.QStyleOptionTab, tabIndex: cint): void =
  fQTabBar_virtualbase_initStyleOption(self.h, option.h, tabIndex)

type QTabBarinitStyleOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionTab, tabIndex: cint): void
proc oninitStyleOption*(self: gen_qtabbar_types.QTabBar, slot: QTabBarinitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QTabBarinitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_initStyleOption(self: ptr cQTabBar, slot: int, option: pointer, tabIndex: cint): void {.exportc: "miqt_exec_callback_QTabBar_initStyleOption ".} =
  var nimfunc = cast[ptr QTabBarinitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionTab(h: option)

  let slotval2 = tabIndex


  nimfunc[](slotval1, slotval2)
proc QTabBardevType*(self: gen_qtabbar_types.QTabBar, ): cint =
  fQTabBar_virtualbase_devType(self.h)

type QTabBardevTypeProc* = proc(): cint
proc ondevType*(self: gen_qtabbar_types.QTabBar, slot: QTabBardevTypeProc) =
  # TODO check subclass
  var tmp = new QTabBardevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_devType(self: ptr cQTabBar, slot: int): cint {.exportc: "miqt_exec_callback_QTabBar_devType ".} =
  var nimfunc = cast[ptr QTabBardevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTabBarsetVisible*(self: gen_qtabbar_types.QTabBar, visible: bool): void =
  fQTabBar_virtualbase_setVisible(self.h, visible)

type QTabBarsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qtabbar_types.QTabBar, slot: QTabBarsetVisibleProc) =
  # TODO check subclass
  var tmp = new QTabBarsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_setVisible(self: ptr cQTabBar, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QTabBar_setVisible ".} =
  var nimfunc = cast[ptr QTabBarsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QTabBarheightForWidth*(self: gen_qtabbar_types.QTabBar, param1: cint): cint =
  fQTabBar_virtualbase_heightForWidth(self.h, param1)

type QTabBarheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qtabbar_types.QTabBar, slot: QTabBarheightForWidthProc) =
  # TODO check subclass
  var tmp = new QTabBarheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_heightForWidth(self: ptr cQTabBar, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTabBar_heightForWidth ".} =
  var nimfunc = cast[ptr QTabBarheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTabBarhasHeightForWidth*(self: gen_qtabbar_types.QTabBar, ): bool =
  fQTabBar_virtualbase_hasHeightForWidth(self.h)

type QTabBarhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qtabbar_types.QTabBar, slot: QTabBarhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QTabBarhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_hasHeightForWidth(self: ptr cQTabBar, slot: int): bool {.exportc: "miqt_exec_callback_QTabBar_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QTabBarhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTabBarpaintEngine*(self: gen_qtabbar_types.QTabBar, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQTabBar_virtualbase_paintEngine(self.h))

type QTabBarpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qtabbar_types.QTabBar, slot: QTabBarpaintEngineProc) =
  # TODO check subclass
  var tmp = new QTabBarpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_paintEngine(self: ptr cQTabBar, slot: int): pointer {.exportc: "miqt_exec_callback_QTabBar_paintEngine ".} =
  var nimfunc = cast[ptr QTabBarpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTabBarkeyReleaseEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QKeyEvent): void =
  fQTabBar_virtualbase_keyReleaseEvent(self.h, event.h)

type QTabBarkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qtabbar_types.QTabBar, slot: QTabBarkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QTabBarkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_keyReleaseEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QTabBarkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QTabBarfocusInEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QFocusEvent): void =
  fQTabBar_virtualbase_focusInEvent(self.h, event.h)

type QTabBarfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qtabbar_types.QTabBar, slot: QTabBarfocusInEventProc) =
  # TODO check subclass
  var tmp = new QTabBarfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_focusInEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_focusInEvent ".} =
  var nimfunc = cast[ptr QTabBarfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QTabBarfocusOutEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QFocusEvent): void =
  fQTabBar_virtualbase_focusOutEvent(self.h, event.h)

type QTabBarfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qtabbar_types.QTabBar, slot: QTabBarfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QTabBarfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_focusOutEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_focusOutEvent ".} =
  var nimfunc = cast[ptr QTabBarfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QTabBarenterEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QEnterEvent): void =
  fQTabBar_virtualbase_enterEvent(self.h, event.h)

type QTabBarenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qtabbar_types.QTabBar, slot: QTabBarenterEventProc) =
  # TODO check subclass
  var tmp = new QTabBarenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_enterEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_enterEvent ".} =
  var nimfunc = cast[ptr QTabBarenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QTabBarleaveEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qcoreevent_types.QEvent): void =
  fQTabBar_virtualbase_leaveEvent(self.h, event.h)

type QTabBarleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qtabbar_types.QTabBar, slot: QTabBarleaveEventProc) =
  # TODO check subclass
  var tmp = new QTabBarleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_leaveEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_leaveEvent ".} =
  var nimfunc = cast[ptr QTabBarleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTabBarmoveEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QMoveEvent): void =
  fQTabBar_virtualbase_moveEvent(self.h, event.h)

type QTabBarmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qtabbar_types.QTabBar, slot: QTabBarmoveEventProc) =
  # TODO check subclass
  var tmp = new QTabBarmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_moveEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_moveEvent ".} =
  var nimfunc = cast[ptr QTabBarmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QTabBarcloseEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QCloseEvent): void =
  fQTabBar_virtualbase_closeEvent(self.h, event.h)

type QTabBarcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qtabbar_types.QTabBar, slot: QTabBarcloseEventProc) =
  # TODO check subclass
  var tmp = new QTabBarcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_closeEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_closeEvent ".} =
  var nimfunc = cast[ptr QTabBarcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QTabBarcontextMenuEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QContextMenuEvent): void =
  fQTabBar_virtualbase_contextMenuEvent(self.h, event.h)

type QTabBarcontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qtabbar_types.QTabBar, slot: QTabBarcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QTabBarcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_contextMenuEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_contextMenuEvent ".} =
  var nimfunc = cast[ptr QTabBarcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QTabBartabletEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QTabletEvent): void =
  fQTabBar_virtualbase_tabletEvent(self.h, event.h)

type QTabBartabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qtabbar_types.QTabBar, slot: QTabBartabletEventProc) =
  # TODO check subclass
  var tmp = new QTabBartabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_tabletEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_tabletEvent ".} =
  var nimfunc = cast[ptr QTabBartabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QTabBaractionEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QActionEvent): void =
  fQTabBar_virtualbase_actionEvent(self.h, event.h)

type QTabBaractionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qtabbar_types.QTabBar, slot: QTabBaractionEventProc) =
  # TODO check subclass
  var tmp = new QTabBaractionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_actionEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_actionEvent ".} =
  var nimfunc = cast[ptr QTabBaractionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QTabBardragEnterEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QDragEnterEvent): void =
  fQTabBar_virtualbase_dragEnterEvent(self.h, event.h)

type QTabBardragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qtabbar_types.QTabBar, slot: QTabBardragEnterEventProc) =
  # TODO check subclass
  var tmp = new QTabBardragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_dragEnterEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_dragEnterEvent ".} =
  var nimfunc = cast[ptr QTabBardragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QTabBardragMoveEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QDragMoveEvent): void =
  fQTabBar_virtualbase_dragMoveEvent(self.h, event.h)

type QTabBardragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qtabbar_types.QTabBar, slot: QTabBardragMoveEventProc) =
  # TODO check subclass
  var tmp = new QTabBardragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_dragMoveEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_dragMoveEvent ".} =
  var nimfunc = cast[ptr QTabBardragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QTabBardragLeaveEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QDragLeaveEvent): void =
  fQTabBar_virtualbase_dragLeaveEvent(self.h, event.h)

type QTabBardragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qtabbar_types.QTabBar, slot: QTabBardragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QTabBardragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_dragLeaveEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QTabBardragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QTabBardropEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qevent_types.QDropEvent): void =
  fQTabBar_virtualbase_dropEvent(self.h, event.h)

type QTabBardropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qtabbar_types.QTabBar, slot: QTabBardropEventProc) =
  # TODO check subclass
  var tmp = new QTabBardropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_dropEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_dropEvent ".} =
  var nimfunc = cast[ptr QTabBardropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QTabBarnativeEvent*(self: gen_qtabbar_types.QTabBar, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQTabBar_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QTabBarnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qtabbar_types.QTabBar, slot: QTabBarnativeEventProc) =
  # TODO check subclass
  var tmp = new QTabBarnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_nativeEvent(self: ptr cQTabBar, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QTabBar_nativeEvent ".} =
  var nimfunc = cast[ptr QTabBarnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QTabBarmetric*(self: gen_qtabbar_types.QTabBar, param1: cint): cint =
  fQTabBar_virtualbase_metric(self.h, cint(param1))

type QTabBarmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qtabbar_types.QTabBar, slot: QTabBarmetricProc) =
  # TODO check subclass
  var tmp = new QTabBarmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_metric(self: ptr cQTabBar, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTabBar_metric ".} =
  var nimfunc = cast[ptr QTabBarmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTabBarinitPainter*(self: gen_qtabbar_types.QTabBar, painter: gen_qpainter_types.QPainter): void =
  fQTabBar_virtualbase_initPainter(self.h, painter.h)

type QTabBarinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qtabbar_types.QTabBar, slot: QTabBarinitPainterProc) =
  # TODO check subclass
  var tmp = new QTabBarinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_initPainter(self: ptr cQTabBar, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QTabBar_initPainter ".} =
  var nimfunc = cast[ptr QTabBarinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QTabBarredirected*(self: gen_qtabbar_types.QTabBar, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQTabBar_virtualbase_redirected(self.h, offset.h))

type QTabBarredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qtabbar_types.QTabBar, slot: QTabBarredirectedProc) =
  # TODO check subclass
  var tmp = new QTabBarredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_redirected(self: ptr cQTabBar, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QTabBar_redirected ".} =
  var nimfunc = cast[ptr QTabBarredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTabBarsharedPainter*(self: gen_qtabbar_types.QTabBar, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQTabBar_virtualbase_sharedPainter(self.h))

type QTabBarsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qtabbar_types.QTabBar, slot: QTabBarsharedPainterProc) =
  # TODO check subclass
  var tmp = new QTabBarsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_sharedPainter(self: ptr cQTabBar, slot: int): pointer {.exportc: "miqt_exec_callback_QTabBar_sharedPainter ".} =
  var nimfunc = cast[ptr QTabBarsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTabBarinputMethodEvent*(self: gen_qtabbar_types.QTabBar, param1: gen_qevent_types.QInputMethodEvent): void =
  fQTabBar_virtualbase_inputMethodEvent(self.h, param1.h)

type QTabBarinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qtabbar_types.QTabBar, slot: QTabBarinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QTabBarinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_inputMethodEvent(self: ptr cQTabBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTabBar_inputMethodEvent ".} =
  var nimfunc = cast[ptr QTabBarinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QTabBarinputMethodQuery*(self: gen_qtabbar_types.QTabBar, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQTabBar_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QTabBarinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qtabbar_types.QTabBar, slot: QTabBarinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QTabBarinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_inputMethodQuery(self: ptr cQTabBar, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QTabBar_inputMethodQuery ".} =
  var nimfunc = cast[ptr QTabBarinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTabBarfocusNextPrevChild*(self: gen_qtabbar_types.QTabBar, next: bool): bool =
  fQTabBar_virtualbase_focusNextPrevChild(self.h, next)

type QTabBarfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qtabbar_types.QTabBar, slot: QTabBarfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QTabBarfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_focusNextPrevChild(self: ptr cQTabBar, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QTabBar_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QTabBarfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTabBareventFilter*(self: gen_qtabbar_types.QTabBar, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQTabBar_virtualbase_eventFilter(self.h, watched.h, event.h)

type QTabBareventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qtabbar_types.QTabBar, slot: QTabBareventFilterProc) =
  # TODO check subclass
  var tmp = new QTabBareventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_eventFilter(self: ptr cQTabBar, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTabBar_eventFilter ".} =
  var nimfunc = cast[ptr QTabBareventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QTabBarchildEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qcoreevent_types.QChildEvent): void =
  fQTabBar_virtualbase_childEvent(self.h, event.h)

type QTabBarchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qtabbar_types.QTabBar, slot: QTabBarchildEventProc) =
  # TODO check subclass
  var tmp = new QTabBarchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_childEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_childEvent ".} =
  var nimfunc = cast[ptr QTabBarchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QTabBarcustomEvent*(self: gen_qtabbar_types.QTabBar, event: gen_qcoreevent_types.QEvent): void =
  fQTabBar_virtualbase_customEvent(self.h, event.h)

type QTabBarcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qtabbar_types.QTabBar, slot: QTabBarcustomEventProc) =
  # TODO check subclass
  var tmp = new QTabBarcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_customEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_customEvent ".} =
  var nimfunc = cast[ptr QTabBarcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTabBarconnectNotify*(self: gen_qtabbar_types.QTabBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTabBar_virtualbase_connectNotify(self.h, signal.h)

type QTabBarconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qtabbar_types.QTabBar, slot: QTabBarconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTabBarconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_connectNotify(self: ptr cQTabBar, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTabBar_connectNotify ".} =
  var nimfunc = cast[ptr QTabBarconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QTabBardisconnectNotify*(self: gen_qtabbar_types.QTabBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTabBar_virtualbase_disconnectNotify(self.h, signal.h)

type QTabBardisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qtabbar_types.QTabBar, slot: QTabBardisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTabBardisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_disconnectNotify(self: ptr cQTabBar, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTabBar_disconnectNotify ".} =
  var nimfunc = cast[ptr QTabBardisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qtabbar_types.QTabBar) =
  fcQTabBar_delete(self.h)
