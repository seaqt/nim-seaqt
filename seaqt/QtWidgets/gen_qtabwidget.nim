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

proc fcQTabWidget_new(parent: pointer): ptr cQTabWidget {.importc: "QTabWidget_new".}
proc fcQTabWidget_new2(): ptr cQTabWidget {.importc: "QTabWidget_new2".}
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
proc fcQTabWidget_connect_currentChanged(self: pointer, slot: int) {.importc: "QTabWidget_connect_currentChanged".}
proc fcQTabWidget_tabCloseRequested(self: pointer, index: cint): void {.importc: "QTabWidget_tabCloseRequested".}
proc fcQTabWidget_connect_tabCloseRequested(self: pointer, slot: int) {.importc: "QTabWidget_connect_tabCloseRequested".}
proc fcQTabWidget_tabBarClicked(self: pointer, index: cint): void {.importc: "QTabWidget_tabBarClicked".}
proc fcQTabWidget_connect_tabBarClicked(self: pointer, slot: int) {.importc: "QTabWidget_connect_tabBarClicked".}
proc fcQTabWidget_tabBarDoubleClicked(self: pointer, index: cint): void {.importc: "QTabWidget_tabBarDoubleClicked".}
proc fcQTabWidget_connect_tabBarDoubleClicked(self: pointer, slot: int) {.importc: "QTabWidget_connect_tabBarDoubleClicked".}
proc fcQTabWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTabWidget_tr2".}
proc fcQTabWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTabWidget_tr3".}
proc fcQTabWidget_setCornerWidget2(self: pointer, w: pointer, corner: cint): void {.importc: "QTabWidget_setCornerWidget2".}
proc fcQTabWidget_cornerWidget1(self: pointer, corner: cint): pointer {.importc: "QTabWidget_cornerWidget1".}
proc fQTabWidget_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QTabWidget_virtualbase_metaObject".}
proc fcQTabWidget_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_metaObject".}
proc fQTabWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QTabWidget_virtualbase_metacast".}
proc fcQTabWidget_override_virtual_metacast(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_metacast".}
proc fQTabWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTabWidget_virtualbase_metacall".}
proc fcQTabWidget_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_metacall".}
proc fQTabWidget_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QTabWidget_virtualbase_sizeHint".}
proc fcQTabWidget_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_sizeHint".}
proc fQTabWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QTabWidget_virtualbase_minimumSizeHint".}
proc fcQTabWidget_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_minimumSizeHint".}
proc fQTabWidget_virtualbase_heightForWidth(self: pointer, width: cint): cint{.importc: "QTabWidget_virtualbase_heightForWidth".}
proc fcQTabWidget_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_heightForWidth".}
proc fQTabWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QTabWidget_virtualbase_hasHeightForWidth".}
proc fcQTabWidget_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_hasHeightForWidth".}
proc fQTabWidget_virtualbase_tabInserted(self: pointer, index: cint): void{.importc: "QTabWidget_virtualbase_tabInserted".}
proc fcQTabWidget_override_virtual_tabInserted(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_tabInserted".}
proc fQTabWidget_virtualbase_tabRemoved(self: pointer, index: cint): void{.importc: "QTabWidget_virtualbase_tabRemoved".}
proc fcQTabWidget_override_virtual_tabRemoved(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_tabRemoved".}
proc fQTabWidget_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QTabWidget_virtualbase_showEvent".}
proc fcQTabWidget_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_showEvent".}
proc fQTabWidget_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QTabWidget_virtualbase_resizeEvent".}
proc fcQTabWidget_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_resizeEvent".}
proc fQTabWidget_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QTabWidget_virtualbase_keyPressEvent".}
proc fcQTabWidget_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_keyPressEvent".}
proc fQTabWidget_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QTabWidget_virtualbase_paintEvent".}
proc fcQTabWidget_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_paintEvent".}
proc fQTabWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QTabWidget_virtualbase_changeEvent".}
proc fcQTabWidget_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_changeEvent".}
proc fQTabWidget_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QTabWidget_virtualbase_event".}
proc fcQTabWidget_override_virtual_event(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_event".}
proc fQTabWidget_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QTabWidget_virtualbase_initStyleOption".}
proc fcQTabWidget_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_initStyleOption".}
proc fQTabWidget_virtualbase_devType(self: pointer, ): cint{.importc: "QTabWidget_virtualbase_devType".}
proc fcQTabWidget_override_virtual_devType(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_devType".}
proc fQTabWidget_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QTabWidget_virtualbase_setVisible".}
proc fcQTabWidget_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_setVisible".}
proc fQTabWidget_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QTabWidget_virtualbase_paintEngine".}
proc fcQTabWidget_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_paintEngine".}
proc fQTabWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_mousePressEvent".}
proc fcQTabWidget_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_mousePressEvent".}
proc fQTabWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_mouseReleaseEvent".}
proc fcQTabWidget_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_mouseReleaseEvent".}
proc fQTabWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQTabWidget_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_mouseDoubleClickEvent".}
proc fQTabWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_mouseMoveEvent".}
proc fcQTabWidget_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_mouseMoveEvent".}
proc fQTabWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_wheelEvent".}
proc fcQTabWidget_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_wheelEvent".}
proc fQTabWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_keyReleaseEvent".}
proc fcQTabWidget_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_keyReleaseEvent".}
proc fQTabWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_focusInEvent".}
proc fcQTabWidget_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_focusInEvent".}
proc fQTabWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_focusOutEvent".}
proc fcQTabWidget_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_focusOutEvent".}
proc fQTabWidget_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_enterEvent".}
proc fcQTabWidget_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_enterEvent".}
proc fQTabWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_leaveEvent".}
proc fcQTabWidget_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_leaveEvent".}
proc fQTabWidget_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_moveEvent".}
proc fcQTabWidget_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_moveEvent".}
proc fQTabWidget_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_closeEvent".}
proc fcQTabWidget_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_closeEvent".}
proc fQTabWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_contextMenuEvent".}
proc fcQTabWidget_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_contextMenuEvent".}
proc fQTabWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_tabletEvent".}
proc fcQTabWidget_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_tabletEvent".}
proc fQTabWidget_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_actionEvent".}
proc fcQTabWidget_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_actionEvent".}
proc fQTabWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_dragEnterEvent".}
proc fcQTabWidget_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_dragEnterEvent".}
proc fQTabWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_dragMoveEvent".}
proc fcQTabWidget_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_dragMoveEvent".}
proc fQTabWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_dragLeaveEvent".}
proc fcQTabWidget_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_dragLeaveEvent".}
proc fQTabWidget_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_dropEvent".}
proc fcQTabWidget_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_dropEvent".}
proc fQTabWidget_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_hideEvent".}
proc fcQTabWidget_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_hideEvent".}
proc fQTabWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QTabWidget_virtualbase_nativeEvent".}
proc fcQTabWidget_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_nativeEvent".}
proc fQTabWidget_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QTabWidget_virtualbase_metric".}
proc fcQTabWidget_override_virtual_metric(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_metric".}
proc fQTabWidget_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QTabWidget_virtualbase_initPainter".}
proc fcQTabWidget_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_initPainter".}
proc fQTabWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QTabWidget_virtualbase_redirected".}
proc fcQTabWidget_override_virtual_redirected(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_redirected".}
proc fQTabWidget_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QTabWidget_virtualbase_sharedPainter".}
proc fcQTabWidget_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_sharedPainter".}
proc fQTabWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QTabWidget_virtualbase_inputMethodEvent".}
proc fcQTabWidget_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_inputMethodEvent".}
proc fQTabWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QTabWidget_virtualbase_inputMethodQuery".}
proc fcQTabWidget_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_inputMethodQuery".}
proc fQTabWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QTabWidget_virtualbase_focusNextPrevChild".}
proc fcQTabWidget_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_focusNextPrevChild".}
proc fQTabWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QTabWidget_virtualbase_eventFilter".}
proc fcQTabWidget_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_eventFilter".}
proc fQTabWidget_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_timerEvent".}
proc fcQTabWidget_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_timerEvent".}
proc fQTabWidget_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_childEvent".}
proc fcQTabWidget_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_childEvent".}
proc fQTabWidget_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_customEvent".}
proc fcQTabWidget_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_customEvent".}
proc fQTabWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTabWidget_virtualbase_connectNotify".}
proc fcQTabWidget_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_connectNotify".}
proc fQTabWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTabWidget_virtualbase_disconnectNotify".}
proc fcQTabWidget_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_disconnectNotify".}
proc fcQTabWidget_staticMetaObject(): pointer {.importc: "QTabWidget_staticMetaObject".}
proc fcQTabWidget_delete(self: pointer) {.importc: "QTabWidget_delete".}


func init*(T: type gen_qtabwidget_types.QTabWidget, h: ptr cQTabWidget): gen_qtabwidget_types.QTabWidget =
  T(h: h)
proc create*(T: type gen_qtabwidget_types.QTabWidget, parent: gen_qwidget_types.QWidget): gen_qtabwidget_types.QTabWidget =
  gen_qtabwidget_types.QTabWidget.init(fcQTabWidget_new(parent.h))

proc create*(T: type gen_qtabwidget_types.QTabWidget, ): gen_qtabwidget_types.QTabWidget =
  gen_qtabwidget_types.QTabWidget.init(fcQTabWidget_new2())

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
proc miqt_exec_callback_QTabWidget_currentChanged(slot: int, index: cint) {.exportc.} =
  let nimfunc = cast[ptr QTabWidgetcurrentChangedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc oncurrentChanged*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetcurrentChangedSlot) =
  var tmp = new QTabWidgetcurrentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_connect_currentChanged(self.h, cast[int](addr tmp[]))

proc tabCloseRequested*(self: gen_qtabwidget_types.QTabWidget, index: cint): void =
  fcQTabWidget_tabCloseRequested(self.h, index)

type QTabWidgettabCloseRequestedSlot* = proc(index: cint)
proc miqt_exec_callback_QTabWidget_tabCloseRequested(slot: int, index: cint) {.exportc.} =
  let nimfunc = cast[ptr QTabWidgettabCloseRequestedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc ontabCloseRequested*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgettabCloseRequestedSlot) =
  var tmp = new QTabWidgettabCloseRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_connect_tabCloseRequested(self.h, cast[int](addr tmp[]))

proc tabBarClicked*(self: gen_qtabwidget_types.QTabWidget, index: cint): void =
  fcQTabWidget_tabBarClicked(self.h, index)

type QTabWidgettabBarClickedSlot* = proc(index: cint)
proc miqt_exec_callback_QTabWidget_tabBarClicked(slot: int, index: cint) {.exportc.} =
  let nimfunc = cast[ptr QTabWidgettabBarClickedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc ontabBarClicked*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgettabBarClickedSlot) =
  var tmp = new QTabWidgettabBarClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_connect_tabBarClicked(self.h, cast[int](addr tmp[]))

proc tabBarDoubleClicked*(self: gen_qtabwidget_types.QTabWidget, index: cint): void =
  fcQTabWidget_tabBarDoubleClicked(self.h, index)

type QTabWidgettabBarDoubleClickedSlot* = proc(index: cint)
proc miqt_exec_callback_QTabWidget_tabBarDoubleClicked(slot: int, index: cint) {.exportc.} =
  let nimfunc = cast[ptr QTabWidgettabBarDoubleClickedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc ontabBarDoubleClicked*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgettabBarDoubleClickedSlot) =
  var tmp = new QTabWidgettabBarDoubleClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_connect_tabBarDoubleClicked(self.h, cast[int](addr tmp[]))

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

proc QTabWidgetmetaObject*(self: gen_qtabwidget_types.QTabWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQTabWidget_virtualbase_metaObject(self.h))

type QTabWidgetmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetmetaObjectProc) =
  # TODO check subclass
  var tmp = new QTabWidgetmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_metaObject(self: ptr cQTabWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTabWidget_metaObject ".} =
  var nimfunc = cast[ptr QTabWidgetmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTabWidgetmetacast*(self: gen_qtabwidget_types.QTabWidget, param1: cstring): pointer =
  fQTabWidget_virtualbase_metacast(self.h, param1)

type QTabWidgetmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetmetacastProc) =
  # TODO check subclass
  var tmp = new QTabWidgetmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_metacast(self: ptr cQTabWidget, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QTabWidget_metacast ".} =
  var nimfunc = cast[ptr QTabWidgetmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTabWidgetmetacall*(self: gen_qtabwidget_types.QTabWidget, param1: cint, param2: cint, param3: pointer): cint =
  fQTabWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTabWidgetmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetmetacallProc) =
  # TODO check subclass
  var tmp = new QTabWidgetmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_metacall(self: ptr cQTabWidget, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTabWidget_metacall ".} =
  var nimfunc = cast[ptr QTabWidgetmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QTabWidgetsizeHint*(self: gen_qtabwidget_types.QTabWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQTabWidget_virtualbase_sizeHint(self.h))

type QTabWidgetsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetsizeHintProc) =
  # TODO check subclass
  var tmp = new QTabWidgetsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_sizeHint(self: ptr cQTabWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTabWidget_sizeHint ".} =
  var nimfunc = cast[ptr QTabWidgetsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTabWidgetminimumSizeHint*(self: gen_qtabwidget_types.QTabWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQTabWidget_virtualbase_minimumSizeHint(self.h))

type QTabWidgetminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QTabWidgetminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_minimumSizeHint(self: ptr cQTabWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTabWidget_minimumSizeHint ".} =
  var nimfunc = cast[ptr QTabWidgetminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTabWidgetheightForWidth*(self: gen_qtabwidget_types.QTabWidget, width: cint): cint =
  fQTabWidget_virtualbase_heightForWidth(self.h, width)

type QTabWidgetheightForWidthProc* = proc(width: cint): cint
proc onheightForWidth*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetheightForWidthProc) =
  # TODO check subclass
  var tmp = new QTabWidgetheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_heightForWidth(self: ptr cQTabWidget, slot: int, width: cint): cint {.exportc: "miqt_exec_callback_QTabWidget_heightForWidth ".} =
  var nimfunc = cast[ptr QTabWidgetheightForWidthProc](cast[pointer](slot))
  let slotval1 = width


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTabWidgethasHeightForWidth*(self: gen_qtabwidget_types.QTabWidget, ): bool =
  fQTabWidget_virtualbase_hasHeightForWidth(self.h)

type QTabWidgethasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgethasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QTabWidgethasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_hasHeightForWidth(self: ptr cQTabWidget, slot: int): bool {.exportc: "miqt_exec_callback_QTabWidget_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QTabWidgethasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTabWidgettabInserted*(self: gen_qtabwidget_types.QTabWidget, index: cint): void =
  fQTabWidget_virtualbase_tabInserted(self.h, index)

type QTabWidgettabInsertedProc* = proc(index: cint): void
proc ontabInserted*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgettabInsertedProc) =
  # TODO check subclass
  var tmp = new QTabWidgettabInsertedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_tabInserted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_tabInserted(self: ptr cQTabWidget, slot: int, index: cint): void {.exportc: "miqt_exec_callback_QTabWidget_tabInserted ".} =
  var nimfunc = cast[ptr QTabWidgettabInsertedProc](cast[pointer](slot))
  let slotval1 = index


  nimfunc[](slotval1)
proc QTabWidgettabRemoved*(self: gen_qtabwidget_types.QTabWidget, index: cint): void =
  fQTabWidget_virtualbase_tabRemoved(self.h, index)

type QTabWidgettabRemovedProc* = proc(index: cint): void
proc ontabRemoved*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgettabRemovedProc) =
  # TODO check subclass
  var tmp = new QTabWidgettabRemovedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_tabRemoved(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_tabRemoved(self: ptr cQTabWidget, slot: int, index: cint): void {.exportc: "miqt_exec_callback_QTabWidget_tabRemoved ".} =
  var nimfunc = cast[ptr QTabWidgettabRemovedProc](cast[pointer](slot))
  let slotval1 = index


  nimfunc[](slotval1)
proc QTabWidgetshowEvent*(self: gen_qtabwidget_types.QTabWidget, param1: gen_qevent_types.QShowEvent): void =
  fQTabWidget_virtualbase_showEvent(self.h, param1.h)

type QTabWidgetshowEventProc* = proc(param1: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetshowEventProc) =
  # TODO check subclass
  var tmp = new QTabWidgetshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_showEvent(self: ptr cQTabWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_showEvent ".} =
  var nimfunc = cast[ptr QTabWidgetshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)


  nimfunc[](slotval1)
proc QTabWidgetresizeEvent*(self: gen_qtabwidget_types.QTabWidget, param1: gen_qevent_types.QResizeEvent): void =
  fQTabWidget_virtualbase_resizeEvent(self.h, param1.h)

type QTabWidgetresizeEventProc* = proc(param1: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetresizeEventProc) =
  # TODO check subclass
  var tmp = new QTabWidgetresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_resizeEvent(self: ptr cQTabWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_resizeEvent ".} =
  var nimfunc = cast[ptr QTabWidgetresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)


  nimfunc[](slotval1)
proc QTabWidgetkeyPressEvent*(self: gen_qtabwidget_types.QTabWidget, param1: gen_qevent_types.QKeyEvent): void =
  fQTabWidget_virtualbase_keyPressEvent(self.h, param1.h)

type QTabWidgetkeyPressEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QTabWidgetkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_keyPressEvent(self: ptr cQTabWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_keyPressEvent ".} =
  var nimfunc = cast[ptr QTabWidgetkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QTabWidgetpaintEvent*(self: gen_qtabwidget_types.QTabWidget, param1: gen_qevent_types.QPaintEvent): void =
  fQTabWidget_virtualbase_paintEvent(self.h, param1.h)

type QTabWidgetpaintEventProc* = proc(param1: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetpaintEventProc) =
  # TODO check subclass
  var tmp = new QTabWidgetpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_paintEvent(self: ptr cQTabWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_paintEvent ".} =
  var nimfunc = cast[ptr QTabWidgetpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)


  nimfunc[](slotval1)
proc QTabWidgetchangeEvent*(self: gen_qtabwidget_types.QTabWidget, param1: gen_qcoreevent_types.QEvent): void =
  fQTabWidget_virtualbase_changeEvent(self.h, param1.h)

type QTabWidgetchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetchangeEventProc) =
  # TODO check subclass
  var tmp = new QTabWidgetchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_changeEvent(self: ptr cQTabWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_changeEvent ".} =
  var nimfunc = cast[ptr QTabWidgetchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QTabWidgetevent*(self: gen_qtabwidget_types.QTabWidget, param1: gen_qcoreevent_types.QEvent): bool =
  fQTabWidget_virtualbase_event(self.h, param1.h)

type QTabWidgeteventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgeteventProc) =
  # TODO check subclass
  var tmp = new QTabWidgeteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_event(self: ptr cQTabWidget, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QTabWidget_event ".} =
  var nimfunc = cast[ptr QTabWidgeteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTabWidgetinitStyleOption*(self: gen_qtabwidget_types.QTabWidget, option: gen_qstyleoption_types.QStyleOptionTabWidgetFrame): void =
  fQTabWidget_virtualbase_initStyleOption(self.h, option.h)

type QTabWidgetinitStyleOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionTabWidgetFrame): void
proc oninitStyleOption*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetinitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QTabWidgetinitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_initStyleOption(self: ptr cQTabWidget, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_initStyleOption ".} =
  var nimfunc = cast[ptr QTabWidgetinitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionTabWidgetFrame(h: option)


  nimfunc[](slotval1)
proc QTabWidgetdevType*(self: gen_qtabwidget_types.QTabWidget, ): cint =
  fQTabWidget_virtualbase_devType(self.h)

type QTabWidgetdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetdevTypeProc) =
  # TODO check subclass
  var tmp = new QTabWidgetdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_devType(self: ptr cQTabWidget, slot: int): cint {.exportc: "miqt_exec_callback_QTabWidget_devType ".} =
  var nimfunc = cast[ptr QTabWidgetdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTabWidgetsetVisible*(self: gen_qtabwidget_types.QTabWidget, visible: bool): void =
  fQTabWidget_virtualbase_setVisible(self.h, visible)

type QTabWidgetsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetsetVisibleProc) =
  # TODO check subclass
  var tmp = new QTabWidgetsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_setVisible(self: ptr cQTabWidget, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QTabWidget_setVisible ".} =
  var nimfunc = cast[ptr QTabWidgetsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QTabWidgetpaintEngine*(self: gen_qtabwidget_types.QTabWidget, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQTabWidget_virtualbase_paintEngine(self.h))

type QTabWidgetpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetpaintEngineProc) =
  # TODO check subclass
  var tmp = new QTabWidgetpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_paintEngine(self: ptr cQTabWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTabWidget_paintEngine ".} =
  var nimfunc = cast[ptr QTabWidgetpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTabWidgetmousePressEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QMouseEvent): void =
  fQTabWidget_virtualbase_mousePressEvent(self.h, event.h)

type QTabWidgetmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetmousePressEventProc) =
  # TODO check subclass
  var tmp = new QTabWidgetmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_mousePressEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_mousePressEvent ".} =
  var nimfunc = cast[ptr QTabWidgetmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QTabWidgetmouseReleaseEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QMouseEvent): void =
  fQTabWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

type QTabWidgetmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QTabWidgetmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_mouseReleaseEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QTabWidgetmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QTabWidgetmouseDoubleClickEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QMouseEvent): void =
  fQTabWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QTabWidgetmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QTabWidgetmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_mouseDoubleClickEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QTabWidgetmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QTabWidgetmouseMoveEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QMouseEvent): void =
  fQTabWidget_virtualbase_mouseMoveEvent(self.h, event.h)

type QTabWidgetmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QTabWidgetmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_mouseMoveEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QTabWidgetmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QTabWidgetwheelEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QWheelEvent): void =
  fQTabWidget_virtualbase_wheelEvent(self.h, event.h)

type QTabWidgetwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetwheelEventProc) =
  # TODO check subclass
  var tmp = new QTabWidgetwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_wheelEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_wheelEvent ".} =
  var nimfunc = cast[ptr QTabWidgetwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QTabWidgetkeyReleaseEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QKeyEvent): void =
  fQTabWidget_virtualbase_keyReleaseEvent(self.h, event.h)

type QTabWidgetkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QTabWidgetkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_keyReleaseEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QTabWidgetkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QTabWidgetfocusInEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QFocusEvent): void =
  fQTabWidget_virtualbase_focusInEvent(self.h, event.h)

type QTabWidgetfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetfocusInEventProc) =
  # TODO check subclass
  var tmp = new QTabWidgetfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_focusInEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_focusInEvent ".} =
  var nimfunc = cast[ptr QTabWidgetfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QTabWidgetfocusOutEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QFocusEvent): void =
  fQTabWidget_virtualbase_focusOutEvent(self.h, event.h)

type QTabWidgetfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QTabWidgetfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_focusOutEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_focusOutEvent ".} =
  var nimfunc = cast[ptr QTabWidgetfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QTabWidgetenterEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QEnterEvent): void =
  fQTabWidget_virtualbase_enterEvent(self.h, event.h)

type QTabWidgetenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetenterEventProc) =
  # TODO check subclass
  var tmp = new QTabWidgetenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_enterEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_enterEvent ".} =
  var nimfunc = cast[ptr QTabWidgetenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QTabWidgetleaveEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qcoreevent_types.QEvent): void =
  fQTabWidget_virtualbase_leaveEvent(self.h, event.h)

type QTabWidgetleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetleaveEventProc) =
  # TODO check subclass
  var tmp = new QTabWidgetleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_leaveEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_leaveEvent ".} =
  var nimfunc = cast[ptr QTabWidgetleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTabWidgetmoveEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QMoveEvent): void =
  fQTabWidget_virtualbase_moveEvent(self.h, event.h)

type QTabWidgetmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetmoveEventProc) =
  # TODO check subclass
  var tmp = new QTabWidgetmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_moveEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_moveEvent ".} =
  var nimfunc = cast[ptr QTabWidgetmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QTabWidgetcloseEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QCloseEvent): void =
  fQTabWidget_virtualbase_closeEvent(self.h, event.h)

type QTabWidgetcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetcloseEventProc) =
  # TODO check subclass
  var tmp = new QTabWidgetcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_closeEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_closeEvent ".} =
  var nimfunc = cast[ptr QTabWidgetcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QTabWidgetcontextMenuEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QContextMenuEvent): void =
  fQTabWidget_virtualbase_contextMenuEvent(self.h, event.h)

type QTabWidgetcontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QTabWidgetcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_contextMenuEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_contextMenuEvent ".} =
  var nimfunc = cast[ptr QTabWidgetcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QTabWidgettabletEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QTabletEvent): void =
  fQTabWidget_virtualbase_tabletEvent(self.h, event.h)

type QTabWidgettabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgettabletEventProc) =
  # TODO check subclass
  var tmp = new QTabWidgettabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_tabletEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_tabletEvent ".} =
  var nimfunc = cast[ptr QTabWidgettabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QTabWidgetactionEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QActionEvent): void =
  fQTabWidget_virtualbase_actionEvent(self.h, event.h)

type QTabWidgetactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetactionEventProc) =
  # TODO check subclass
  var tmp = new QTabWidgetactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_actionEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_actionEvent ".} =
  var nimfunc = cast[ptr QTabWidgetactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QTabWidgetdragEnterEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QDragEnterEvent): void =
  fQTabWidget_virtualbase_dragEnterEvent(self.h, event.h)

type QTabWidgetdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QTabWidgetdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_dragEnterEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_dragEnterEvent ".} =
  var nimfunc = cast[ptr QTabWidgetdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QTabWidgetdragMoveEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QDragMoveEvent): void =
  fQTabWidget_virtualbase_dragMoveEvent(self.h, event.h)

type QTabWidgetdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QTabWidgetdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_dragMoveEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_dragMoveEvent ".} =
  var nimfunc = cast[ptr QTabWidgetdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QTabWidgetdragLeaveEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QDragLeaveEvent): void =
  fQTabWidget_virtualbase_dragLeaveEvent(self.h, event.h)

type QTabWidgetdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QTabWidgetdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_dragLeaveEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QTabWidgetdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QTabWidgetdropEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QDropEvent): void =
  fQTabWidget_virtualbase_dropEvent(self.h, event.h)

type QTabWidgetdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetdropEventProc) =
  # TODO check subclass
  var tmp = new QTabWidgetdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_dropEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_dropEvent ".} =
  var nimfunc = cast[ptr QTabWidgetdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QTabWidgethideEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qevent_types.QHideEvent): void =
  fQTabWidget_virtualbase_hideEvent(self.h, event.h)

type QTabWidgethideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgethideEventProc) =
  # TODO check subclass
  var tmp = new QTabWidgethideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_hideEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_hideEvent ".} =
  var nimfunc = cast[ptr QTabWidgethideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QTabWidgetnativeEvent*(self: gen_qtabwidget_types.QTabWidget, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQTabWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QTabWidgetnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetnativeEventProc) =
  # TODO check subclass
  var tmp = new QTabWidgetnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_nativeEvent(self: ptr cQTabWidget, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QTabWidget_nativeEvent ".} =
  var nimfunc = cast[ptr QTabWidgetnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QTabWidgetmetric*(self: gen_qtabwidget_types.QTabWidget, param1: cint): cint =
  fQTabWidget_virtualbase_metric(self.h, cint(param1))

type QTabWidgetmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetmetricProc) =
  # TODO check subclass
  var tmp = new QTabWidgetmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_metric(self: ptr cQTabWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTabWidget_metric ".} =
  var nimfunc = cast[ptr QTabWidgetmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTabWidgetinitPainter*(self: gen_qtabwidget_types.QTabWidget, painter: gen_qpainter_types.QPainter): void =
  fQTabWidget_virtualbase_initPainter(self.h, painter.h)

type QTabWidgetinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetinitPainterProc) =
  # TODO check subclass
  var tmp = new QTabWidgetinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_initPainter(self: ptr cQTabWidget, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_initPainter ".} =
  var nimfunc = cast[ptr QTabWidgetinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QTabWidgetredirected*(self: gen_qtabwidget_types.QTabWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQTabWidget_virtualbase_redirected(self.h, offset.h))

type QTabWidgetredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetredirectedProc) =
  # TODO check subclass
  var tmp = new QTabWidgetredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_redirected(self: ptr cQTabWidget, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QTabWidget_redirected ".} =
  var nimfunc = cast[ptr QTabWidgetredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTabWidgetsharedPainter*(self: gen_qtabwidget_types.QTabWidget, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQTabWidget_virtualbase_sharedPainter(self.h))

type QTabWidgetsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetsharedPainterProc) =
  # TODO check subclass
  var tmp = new QTabWidgetsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_sharedPainter(self: ptr cQTabWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTabWidget_sharedPainter ".} =
  var nimfunc = cast[ptr QTabWidgetsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTabWidgetinputMethodEvent*(self: gen_qtabwidget_types.QTabWidget, param1: gen_qevent_types.QInputMethodEvent): void =
  fQTabWidget_virtualbase_inputMethodEvent(self.h, param1.h)

type QTabWidgetinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QTabWidgetinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_inputMethodEvent(self: ptr cQTabWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_inputMethodEvent ".} =
  var nimfunc = cast[ptr QTabWidgetinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QTabWidgetinputMethodQuery*(self: gen_qtabwidget_types.QTabWidget, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQTabWidget_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QTabWidgetinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QTabWidgetinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_inputMethodQuery(self: ptr cQTabWidget, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QTabWidget_inputMethodQuery ".} =
  var nimfunc = cast[ptr QTabWidgetinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTabWidgetfocusNextPrevChild*(self: gen_qtabwidget_types.QTabWidget, next: bool): bool =
  fQTabWidget_virtualbase_focusNextPrevChild(self.h, next)

type QTabWidgetfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QTabWidgetfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_focusNextPrevChild(self: ptr cQTabWidget, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QTabWidget_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QTabWidgetfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTabWidgeteventFilter*(self: gen_qtabwidget_types.QTabWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQTabWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

type QTabWidgeteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgeteventFilterProc) =
  # TODO check subclass
  var tmp = new QTabWidgeteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_eventFilter(self: ptr cQTabWidget, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTabWidget_eventFilter ".} =
  var nimfunc = cast[ptr QTabWidgeteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QTabWidgettimerEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fQTabWidget_virtualbase_timerEvent(self.h, event.h)

type QTabWidgettimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgettimerEventProc) =
  # TODO check subclass
  var tmp = new QTabWidgettimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_timerEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_timerEvent ".} =
  var nimfunc = cast[ptr QTabWidgettimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QTabWidgetchildEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fQTabWidget_virtualbase_childEvent(self.h, event.h)

type QTabWidgetchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetchildEventProc) =
  # TODO check subclass
  var tmp = new QTabWidgetchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_childEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_childEvent ".} =
  var nimfunc = cast[ptr QTabWidgetchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QTabWidgetcustomEvent*(self: gen_qtabwidget_types.QTabWidget, event: gen_qcoreevent_types.QEvent): void =
  fQTabWidget_virtualbase_customEvent(self.h, event.h)

type QTabWidgetcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetcustomEventProc) =
  # TODO check subclass
  var tmp = new QTabWidgetcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_customEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_customEvent ".} =
  var nimfunc = cast[ptr QTabWidgetcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTabWidgetconnectNotify*(self: gen_qtabwidget_types.QTabWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTabWidget_virtualbase_connectNotify(self.h, signal.h)

type QTabWidgetconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTabWidgetconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_connectNotify(self: ptr cQTabWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_connectNotify ".} =
  var nimfunc = cast[ptr QTabWidgetconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QTabWidgetdisconnectNotify*(self: gen_qtabwidget_types.QTabWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTabWidget_virtualbase_disconnectNotify(self.h, signal.h)

type QTabWidgetdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qtabwidget_types.QTabWidget, slot: QTabWidgetdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTabWidgetdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_disconnectNotify(self: ptr cQTabWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_disconnectNotify ".} =
  var nimfunc = cast[ptr QTabWidgetdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qtabwidget_types.QTabWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTabWidget_staticMetaObject())
proc delete*(self: gen_qtabwidget_types.QTabWidget) =
  fcQTabWidget_delete(self.h)
