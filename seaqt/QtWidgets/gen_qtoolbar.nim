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
{.compile("gen_qtoolbar.cpp", cflags).}


import ./gen_qtoolbar_types
export gen_qtoolbar_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qicon_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ./gen_qaction_types,
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
  gen_qevent_types,
  gen_qicon_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qaction_types,
  gen_qwidget

type cQToolBar*{.exportc: "QToolBar", incompleteStruct.} = object

proc fcQToolBar_new(parent: pointer): ptr cQToolBar {.importc: "QToolBar_new".}
proc fcQToolBar_new2(title: struct_miqt_string): ptr cQToolBar {.importc: "QToolBar_new2".}
proc fcQToolBar_new3(): ptr cQToolBar {.importc: "QToolBar_new3".}
proc fcQToolBar_new4(title: struct_miqt_string, parent: pointer): ptr cQToolBar {.importc: "QToolBar_new4".}
proc fcQToolBar_metaObject(self: pointer, ): pointer {.importc: "QToolBar_metaObject".}
proc fcQToolBar_metacast(self: pointer, param1: cstring): pointer {.importc: "QToolBar_metacast".}
proc fcQToolBar_tr(s: cstring): struct_miqt_string {.importc: "QToolBar_tr".}
proc fcQToolBar_trUtf8(s: cstring): struct_miqt_string {.importc: "QToolBar_trUtf8".}
proc fcQToolBar_setMovable(self: pointer, movable: bool): void {.importc: "QToolBar_setMovable".}
proc fcQToolBar_isMovable(self: pointer, ): bool {.importc: "QToolBar_isMovable".}
proc fcQToolBar_setAllowedAreas(self: pointer, areas: cint): void {.importc: "QToolBar_setAllowedAreas".}
proc fcQToolBar_allowedAreas(self: pointer, ): cint {.importc: "QToolBar_allowedAreas".}
proc fcQToolBar_isAreaAllowed(self: pointer, area: cint): bool {.importc: "QToolBar_isAreaAllowed".}
proc fcQToolBar_setOrientation(self: pointer, orientation: cint): void {.importc: "QToolBar_setOrientation".}
proc fcQToolBar_orientation(self: pointer, ): cint {.importc: "QToolBar_orientation".}
proc fcQToolBar_clear(self: pointer, ): void {.importc: "QToolBar_clear".}
proc fcQToolBar_addAction(self: pointer, text: struct_miqt_string): pointer {.importc: "QToolBar_addAction".}
proc fcQToolBar_addAction2(self: pointer, icon: pointer, text: struct_miqt_string): pointer {.importc: "QToolBar_addAction2".}
proc fcQToolBar_addSeparator(self: pointer, ): pointer {.importc: "QToolBar_addSeparator".}
proc fcQToolBar_insertSeparator(self: pointer, before: pointer): pointer {.importc: "QToolBar_insertSeparator".}
proc fcQToolBar_addWidget(self: pointer, widget: pointer): pointer {.importc: "QToolBar_addWidget".}
proc fcQToolBar_insertWidget(self: pointer, before: pointer, widget: pointer): pointer {.importc: "QToolBar_insertWidget".}
proc fcQToolBar_actionGeometry(self: pointer, action: pointer): pointer {.importc: "QToolBar_actionGeometry".}
proc fcQToolBar_actionAt(self: pointer, p: pointer): pointer {.importc: "QToolBar_actionAt".}
proc fcQToolBar_actionAt2(self: pointer, x: cint, y: cint): pointer {.importc: "QToolBar_actionAt2".}
proc fcQToolBar_toggleViewAction(self: pointer, ): pointer {.importc: "QToolBar_toggleViewAction".}
proc fcQToolBar_iconSize(self: pointer, ): pointer {.importc: "QToolBar_iconSize".}
proc fcQToolBar_toolButtonStyle(self: pointer, ): cint {.importc: "QToolBar_toolButtonStyle".}
proc fcQToolBar_widgetForAction(self: pointer, action: pointer): pointer {.importc: "QToolBar_widgetForAction".}
proc fcQToolBar_isFloatable(self: pointer, ): bool {.importc: "QToolBar_isFloatable".}
proc fcQToolBar_setFloatable(self: pointer, floatable: bool): void {.importc: "QToolBar_setFloatable".}
proc fcQToolBar_isFloating(self: pointer, ): bool {.importc: "QToolBar_isFloating".}
proc fcQToolBar_setIconSize(self: pointer, iconSize: pointer): void {.importc: "QToolBar_setIconSize".}
proc fcQToolBar_setToolButtonStyle(self: pointer, toolButtonStyle: cint): void {.importc: "QToolBar_setToolButtonStyle".}
proc fcQToolBar_actionTriggered(self: pointer, action: pointer): void {.importc: "QToolBar_actionTriggered".}
proc fcQToolBar_connect_actionTriggered(self: pointer, slot: int) {.importc: "QToolBar_connect_actionTriggered".}
proc fcQToolBar_movableChanged(self: pointer, movable: bool): void {.importc: "QToolBar_movableChanged".}
proc fcQToolBar_connect_movableChanged(self: pointer, slot: int) {.importc: "QToolBar_connect_movableChanged".}
proc fcQToolBar_allowedAreasChanged(self: pointer, allowedAreas: cint): void {.importc: "QToolBar_allowedAreasChanged".}
proc fcQToolBar_connect_allowedAreasChanged(self: pointer, slot: int) {.importc: "QToolBar_connect_allowedAreasChanged".}
proc fcQToolBar_orientationChanged(self: pointer, orientation: cint): void {.importc: "QToolBar_orientationChanged".}
proc fcQToolBar_connect_orientationChanged(self: pointer, slot: int) {.importc: "QToolBar_connect_orientationChanged".}
proc fcQToolBar_iconSizeChanged(self: pointer, iconSize: pointer): void {.importc: "QToolBar_iconSizeChanged".}
proc fcQToolBar_connect_iconSizeChanged(self: pointer, slot: int) {.importc: "QToolBar_connect_iconSizeChanged".}
proc fcQToolBar_toolButtonStyleChanged(self: pointer, toolButtonStyle: cint): void {.importc: "QToolBar_toolButtonStyleChanged".}
proc fcQToolBar_connect_toolButtonStyleChanged(self: pointer, slot: int) {.importc: "QToolBar_connect_toolButtonStyleChanged".}
proc fcQToolBar_topLevelChanged(self: pointer, topLevel: bool): void {.importc: "QToolBar_topLevelChanged".}
proc fcQToolBar_connect_topLevelChanged(self: pointer, slot: int) {.importc: "QToolBar_connect_topLevelChanged".}
proc fcQToolBar_visibilityChanged(self: pointer, visible: bool): void {.importc: "QToolBar_visibilityChanged".}
proc fcQToolBar_connect_visibilityChanged(self: pointer, slot: int) {.importc: "QToolBar_connect_visibilityChanged".}
proc fcQToolBar_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QToolBar_tr2".}
proc fcQToolBar_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QToolBar_tr3".}
proc fcQToolBar_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QToolBar_trUtf82".}
proc fcQToolBar_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QToolBar_trUtf83".}
proc fQToolBar_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_actionEvent".}
proc fcQToolBar_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_actionEvent".}
proc fQToolBar_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_changeEvent".}
proc fcQToolBar_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_changeEvent".}
proc fQToolBar_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_paintEvent".}
proc fcQToolBar_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_paintEvent".}
proc fQToolBar_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QToolBar_virtualbase_event".}
proc fcQToolBar_override_virtual_event(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_event".}
proc fQToolBar_virtualbase_devType(self: pointer, ): cint{.importc: "QToolBar_virtualbase_devType".}
proc fcQToolBar_override_virtual_devType(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_devType".}
proc fQToolBar_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QToolBar_virtualbase_setVisible".}
proc fcQToolBar_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_setVisible".}
proc fQToolBar_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QToolBar_virtualbase_sizeHint".}
proc fcQToolBar_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_sizeHint".}
proc fQToolBar_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QToolBar_virtualbase_minimumSizeHint".}
proc fcQToolBar_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_minimumSizeHint".}
proc fQToolBar_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QToolBar_virtualbase_heightForWidth".}
proc fcQToolBar_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_heightForWidth".}
proc fQToolBar_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QToolBar_virtualbase_hasHeightForWidth".}
proc fcQToolBar_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_hasHeightForWidth".}
proc fQToolBar_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QToolBar_virtualbase_paintEngine".}
proc fcQToolBar_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_paintEngine".}
proc fQToolBar_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_mousePressEvent".}
proc fcQToolBar_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_mousePressEvent".}
proc fQToolBar_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_mouseReleaseEvent".}
proc fcQToolBar_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_mouseReleaseEvent".}
proc fQToolBar_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_mouseDoubleClickEvent".}
proc fcQToolBar_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_mouseDoubleClickEvent".}
proc fQToolBar_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_mouseMoveEvent".}
proc fcQToolBar_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_mouseMoveEvent".}
proc fQToolBar_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_wheelEvent".}
proc fcQToolBar_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_wheelEvent".}
proc fQToolBar_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_keyPressEvent".}
proc fcQToolBar_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_keyPressEvent".}
proc fQToolBar_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_keyReleaseEvent".}
proc fcQToolBar_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_keyReleaseEvent".}
proc fQToolBar_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_focusInEvent".}
proc fcQToolBar_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_focusInEvent".}
proc fQToolBar_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_focusOutEvent".}
proc fcQToolBar_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_focusOutEvent".}
proc fQToolBar_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_enterEvent".}
proc fcQToolBar_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_enterEvent".}
proc fQToolBar_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_leaveEvent".}
proc fcQToolBar_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_leaveEvent".}
proc fQToolBar_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_moveEvent".}
proc fcQToolBar_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_moveEvent".}
proc fQToolBar_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_resizeEvent".}
proc fcQToolBar_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_resizeEvent".}
proc fQToolBar_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_closeEvent".}
proc fcQToolBar_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_closeEvent".}
proc fQToolBar_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_contextMenuEvent".}
proc fcQToolBar_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_contextMenuEvent".}
proc fQToolBar_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_tabletEvent".}
proc fcQToolBar_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_tabletEvent".}
proc fQToolBar_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_dragEnterEvent".}
proc fcQToolBar_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_dragEnterEvent".}
proc fQToolBar_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_dragMoveEvent".}
proc fcQToolBar_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_dragMoveEvent".}
proc fQToolBar_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_dragLeaveEvent".}
proc fcQToolBar_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_dragLeaveEvent".}
proc fQToolBar_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_dropEvent".}
proc fcQToolBar_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_dropEvent".}
proc fQToolBar_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_showEvent".}
proc fcQToolBar_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_showEvent".}
proc fQToolBar_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_hideEvent".}
proc fcQToolBar_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_hideEvent".}
proc fQToolBar_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QToolBar_virtualbase_nativeEvent".}
proc fcQToolBar_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_nativeEvent".}
proc fQToolBar_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QToolBar_virtualbase_metric".}
proc fcQToolBar_override_virtual_metric(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_metric".}
proc fQToolBar_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QToolBar_virtualbase_initPainter".}
proc fcQToolBar_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_initPainter".}
proc fQToolBar_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QToolBar_virtualbase_redirected".}
proc fcQToolBar_override_virtual_redirected(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_redirected".}
proc fQToolBar_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QToolBar_virtualbase_sharedPainter".}
proc fcQToolBar_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_sharedPainter".}
proc fQToolBar_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QToolBar_virtualbase_inputMethodEvent".}
proc fcQToolBar_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_inputMethodEvent".}
proc fQToolBar_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QToolBar_virtualbase_inputMethodQuery".}
proc fcQToolBar_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_inputMethodQuery".}
proc fQToolBar_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QToolBar_virtualbase_focusNextPrevChild".}
proc fcQToolBar_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_focusNextPrevChild".}
proc fQToolBar_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QToolBar_virtualbase_eventFilter".}
proc fcQToolBar_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_eventFilter".}
proc fQToolBar_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_timerEvent".}
proc fcQToolBar_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_timerEvent".}
proc fQToolBar_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_childEvent".}
proc fcQToolBar_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_childEvent".}
proc fQToolBar_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QToolBar_virtualbase_customEvent".}
proc fcQToolBar_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_customEvent".}
proc fQToolBar_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QToolBar_virtualbase_connectNotify".}
proc fcQToolBar_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_connectNotify".}
proc fQToolBar_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QToolBar_virtualbase_disconnectNotify".}
proc fcQToolBar_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QToolBar_override_virtual_disconnectNotify".}
proc fcQToolBar_delete(self: pointer) {.importc: "QToolBar_delete".}


func init*(T: type gen_qtoolbar_types.QToolBar, h: ptr cQToolBar): gen_qtoolbar_types.QToolBar =
  T(h: h)
proc create*(T: type gen_qtoolbar_types.QToolBar, parent: gen_qwidget_types.QWidget): gen_qtoolbar_types.QToolBar =
  gen_qtoolbar_types.QToolBar.init(fcQToolBar_new(parent.h))

proc create*(T: type gen_qtoolbar_types.QToolBar, title: string): gen_qtoolbar_types.QToolBar =
  gen_qtoolbar_types.QToolBar.init(fcQToolBar_new2(struct_miqt_string(data: title, len: csize_t(len(title)))))

proc create*(T: type gen_qtoolbar_types.QToolBar, ): gen_qtoolbar_types.QToolBar =
  gen_qtoolbar_types.QToolBar.init(fcQToolBar_new3())

proc create*(T: type gen_qtoolbar_types.QToolBar, title: string, parent: gen_qwidget_types.QWidget): gen_qtoolbar_types.QToolBar =
  gen_qtoolbar_types.QToolBar.init(fcQToolBar_new4(struct_miqt_string(data: title, len: csize_t(len(title))), parent.h))

proc metaObject*(self: gen_qtoolbar_types.QToolBar, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQToolBar_metaObject(self.h))

proc metacast*(self: gen_qtoolbar_types.QToolBar, param1: cstring): pointer =
  fcQToolBar_metacast(self.h, param1)

proc tr*(_: type gen_qtoolbar_types.QToolBar, s: cstring): string =
  let v_ms = fcQToolBar_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtoolbar_types.QToolBar, s: cstring): string =
  let v_ms = fcQToolBar_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setMovable*(self: gen_qtoolbar_types.QToolBar, movable: bool): void =
  fcQToolBar_setMovable(self.h, movable)

proc isMovable*(self: gen_qtoolbar_types.QToolBar, ): bool =
  fcQToolBar_isMovable(self.h)

proc setAllowedAreas*(self: gen_qtoolbar_types.QToolBar, areas: cint): void =
  fcQToolBar_setAllowedAreas(self.h, cint(areas))

proc allowedAreas*(self: gen_qtoolbar_types.QToolBar, ): cint =
  cint(fcQToolBar_allowedAreas(self.h))

proc isAreaAllowed*(self: gen_qtoolbar_types.QToolBar, area: cint): bool =
  fcQToolBar_isAreaAllowed(self.h, cint(area))

proc setOrientation*(self: gen_qtoolbar_types.QToolBar, orientation: cint): void =
  fcQToolBar_setOrientation(self.h, cint(orientation))

proc orientation*(self: gen_qtoolbar_types.QToolBar, ): cint =
  cint(fcQToolBar_orientation(self.h))

proc clear*(self: gen_qtoolbar_types.QToolBar, ): void =
  fcQToolBar_clear(self.h)

proc addAction*(self: gen_qtoolbar_types.QToolBar, text: string): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQToolBar_addAction(self.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc addAction*(self: gen_qtoolbar_types.QToolBar, icon: gen_qicon_types.QIcon, text: string): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQToolBar_addAction2(self.h, icon.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc addSeparator*(self: gen_qtoolbar_types.QToolBar, ): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQToolBar_addSeparator(self.h))

proc insertSeparator*(self: gen_qtoolbar_types.QToolBar, before: gen_qaction_types.QAction): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQToolBar_insertSeparator(self.h, before.h))

proc addWidget*(self: gen_qtoolbar_types.QToolBar, widget: gen_qwidget_types.QWidget): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQToolBar_addWidget(self.h, widget.h))

proc insertWidget*(self: gen_qtoolbar_types.QToolBar, before: gen_qaction_types.QAction, widget: gen_qwidget_types.QWidget): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQToolBar_insertWidget(self.h, before.h, widget.h))

proc actionGeometry*(self: gen_qtoolbar_types.QToolBar, action: gen_qaction_types.QAction): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQToolBar_actionGeometry(self.h, action.h))

proc actionAt*(self: gen_qtoolbar_types.QToolBar, p: gen_qpoint_types.QPoint): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQToolBar_actionAt(self.h, p.h))

proc actionAt*(self: gen_qtoolbar_types.QToolBar, x: cint, y: cint): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQToolBar_actionAt2(self.h, x, y))

proc toggleViewAction*(self: gen_qtoolbar_types.QToolBar, ): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQToolBar_toggleViewAction(self.h))

proc iconSize*(self: gen_qtoolbar_types.QToolBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQToolBar_iconSize(self.h))

proc toolButtonStyle*(self: gen_qtoolbar_types.QToolBar, ): cint =
  cint(fcQToolBar_toolButtonStyle(self.h))

proc widgetForAction*(self: gen_qtoolbar_types.QToolBar, action: gen_qaction_types.QAction): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQToolBar_widgetForAction(self.h, action.h))

proc isFloatable*(self: gen_qtoolbar_types.QToolBar, ): bool =
  fcQToolBar_isFloatable(self.h)

proc setFloatable*(self: gen_qtoolbar_types.QToolBar, floatable: bool): void =
  fcQToolBar_setFloatable(self.h, floatable)

proc isFloating*(self: gen_qtoolbar_types.QToolBar, ): bool =
  fcQToolBar_isFloating(self.h)

proc setIconSize*(self: gen_qtoolbar_types.QToolBar, iconSize: gen_qsize_types.QSize): void =
  fcQToolBar_setIconSize(self.h, iconSize.h)

proc setToolButtonStyle*(self: gen_qtoolbar_types.QToolBar, toolButtonStyle: cint): void =
  fcQToolBar_setToolButtonStyle(self.h, cint(toolButtonStyle))

proc actionTriggered*(self: gen_qtoolbar_types.QToolBar, action: gen_qaction_types.QAction): void =
  fcQToolBar_actionTriggered(self.h, action.h)

type QToolBaractionTriggeredSlot* = proc(action: gen_qaction_types.QAction)
proc miqt_exec_callback_QToolBar_actionTriggered(slot: int, action: pointer) {.exportc.} =
  let nimfunc = cast[ptr QToolBaractionTriggeredSlot](cast[pointer](slot))
  let slotval1 = gen_qaction_types.QAction(h: action)

  nimfunc[](slotval1)

proc onactionTriggered*(self: gen_qtoolbar_types.QToolBar, slot: QToolBaractionTriggeredSlot) =
  var tmp = new QToolBaractionTriggeredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_connect_actionTriggered(self.h, cast[int](addr tmp[]))

proc movableChanged*(self: gen_qtoolbar_types.QToolBar, movable: bool): void =
  fcQToolBar_movableChanged(self.h, movable)

type QToolBarmovableChangedSlot* = proc(movable: bool)
proc miqt_exec_callback_QToolBar_movableChanged(slot: int, movable: bool) {.exportc.} =
  let nimfunc = cast[ptr QToolBarmovableChangedSlot](cast[pointer](slot))
  let slotval1 = movable

  nimfunc[](slotval1)

proc onmovableChanged*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarmovableChangedSlot) =
  var tmp = new QToolBarmovableChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_connect_movableChanged(self.h, cast[int](addr tmp[]))

proc allowedAreasChanged*(self: gen_qtoolbar_types.QToolBar, allowedAreas: cint): void =
  fcQToolBar_allowedAreasChanged(self.h, cint(allowedAreas))

type QToolBarallowedAreasChangedSlot* = proc(allowedAreas: cint)
proc miqt_exec_callback_QToolBar_allowedAreasChanged(slot: int, allowedAreas: cint) {.exportc.} =
  let nimfunc = cast[ptr QToolBarallowedAreasChangedSlot](cast[pointer](slot))
  let slotval1 = cint(allowedAreas)

  nimfunc[](slotval1)

proc onallowedAreasChanged*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarallowedAreasChangedSlot) =
  var tmp = new QToolBarallowedAreasChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_connect_allowedAreasChanged(self.h, cast[int](addr tmp[]))

proc orientationChanged*(self: gen_qtoolbar_types.QToolBar, orientation: cint): void =
  fcQToolBar_orientationChanged(self.h, cint(orientation))

type QToolBarorientationChangedSlot* = proc(orientation: cint)
proc miqt_exec_callback_QToolBar_orientationChanged(slot: int, orientation: cint) {.exportc.} =
  let nimfunc = cast[ptr QToolBarorientationChangedSlot](cast[pointer](slot))
  let slotval1 = cint(orientation)

  nimfunc[](slotval1)

proc onorientationChanged*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarorientationChangedSlot) =
  var tmp = new QToolBarorientationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_connect_orientationChanged(self.h, cast[int](addr tmp[]))

proc iconSizeChanged*(self: gen_qtoolbar_types.QToolBar, iconSize: gen_qsize_types.QSize): void =
  fcQToolBar_iconSizeChanged(self.h, iconSize.h)

type QToolBariconSizeChangedSlot* = proc(iconSize: gen_qsize_types.QSize)
proc miqt_exec_callback_QToolBar_iconSizeChanged(slot: int, iconSize: pointer) {.exportc.} =
  let nimfunc = cast[ptr QToolBariconSizeChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qsize_types.QSize(h: iconSize)

  nimfunc[](slotval1)

proc oniconSizeChanged*(self: gen_qtoolbar_types.QToolBar, slot: QToolBariconSizeChangedSlot) =
  var tmp = new QToolBariconSizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_connect_iconSizeChanged(self.h, cast[int](addr tmp[]))

proc toolButtonStyleChanged*(self: gen_qtoolbar_types.QToolBar, toolButtonStyle: cint): void =
  fcQToolBar_toolButtonStyleChanged(self.h, cint(toolButtonStyle))

type QToolBartoolButtonStyleChangedSlot* = proc(toolButtonStyle: cint)
proc miqt_exec_callback_QToolBar_toolButtonStyleChanged(slot: int, toolButtonStyle: cint) {.exportc.} =
  let nimfunc = cast[ptr QToolBartoolButtonStyleChangedSlot](cast[pointer](slot))
  let slotval1 = cint(toolButtonStyle)

  nimfunc[](slotval1)

proc ontoolButtonStyleChanged*(self: gen_qtoolbar_types.QToolBar, slot: QToolBartoolButtonStyleChangedSlot) =
  var tmp = new QToolBartoolButtonStyleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_connect_toolButtonStyleChanged(self.h, cast[int](addr tmp[]))

proc topLevelChanged*(self: gen_qtoolbar_types.QToolBar, topLevel: bool): void =
  fcQToolBar_topLevelChanged(self.h, topLevel)

type QToolBartopLevelChangedSlot* = proc(topLevel: bool)
proc miqt_exec_callback_QToolBar_topLevelChanged(slot: int, topLevel: bool) {.exportc.} =
  let nimfunc = cast[ptr QToolBartopLevelChangedSlot](cast[pointer](slot))
  let slotval1 = topLevel

  nimfunc[](slotval1)

proc ontopLevelChanged*(self: gen_qtoolbar_types.QToolBar, slot: QToolBartopLevelChangedSlot) =
  var tmp = new QToolBartopLevelChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_connect_topLevelChanged(self.h, cast[int](addr tmp[]))

proc visibilityChanged*(self: gen_qtoolbar_types.QToolBar, visible: bool): void =
  fcQToolBar_visibilityChanged(self.h, visible)

type QToolBarvisibilityChangedSlot* = proc(visible: bool)
proc miqt_exec_callback_QToolBar_visibilityChanged(slot: int, visible: bool) {.exportc.} =
  let nimfunc = cast[ptr QToolBarvisibilityChangedSlot](cast[pointer](slot))
  let slotval1 = visible

  nimfunc[](slotval1)

proc onvisibilityChanged*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarvisibilityChangedSlot) =
  var tmp = new QToolBarvisibilityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_connect_visibilityChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qtoolbar_types.QToolBar, s: cstring, c: cstring): string =
  let v_ms = fcQToolBar_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtoolbar_types.QToolBar, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQToolBar_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtoolbar_types.QToolBar, s: cstring, c: cstring): string =
  let v_ms = fcQToolBar_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtoolbar_types.QToolBar, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQToolBar_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QToolBaractionEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QActionEvent): void =
  fQToolBar_virtualbase_actionEvent(self.h, event.h)

type QToolBaractionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qtoolbar_types.QToolBar, slot: QToolBaractionEventProc) =
  # TODO check subclass
  var tmp = new QToolBaractionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_actionEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_actionEvent ".} =
  var nimfunc = cast[ptr QToolBaractionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QToolBarchangeEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qcoreevent_types.QEvent): void =
  fQToolBar_virtualbase_changeEvent(self.h, event.h)

type QToolBarchangeEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarchangeEventProc) =
  # TODO check subclass
  var tmp = new QToolBarchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_changeEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_changeEvent ".} =
  var nimfunc = cast[ptr QToolBarchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QToolBarpaintEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QPaintEvent): void =
  fQToolBar_virtualbase_paintEvent(self.h, event.h)

type QToolBarpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarpaintEventProc) =
  # TODO check subclass
  var tmp = new QToolBarpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_paintEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_paintEvent ".} =
  var nimfunc = cast[ptr QToolBarpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QToolBarevent*(self: gen_qtoolbar_types.QToolBar, event: gen_qcoreevent_types.QEvent): bool =
  fQToolBar_virtualbase_event(self.h, event.h)

type QToolBareventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qtoolbar_types.QToolBar, slot: QToolBareventProc) =
  # TODO check subclass
  var tmp = new QToolBareventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_event(self: ptr cQToolBar, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QToolBar_event ".} =
  var nimfunc = cast[ptr QToolBareventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QToolBardevType*(self: gen_qtoolbar_types.QToolBar, ): cint =
  fQToolBar_virtualbase_devType(self.h)

type QToolBardevTypeProc* = proc(): cint
proc ondevType*(self: gen_qtoolbar_types.QToolBar, slot: QToolBardevTypeProc) =
  # TODO check subclass
  var tmp = new QToolBardevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_devType(self: ptr cQToolBar, slot: int): cint {.exportc: "miqt_exec_callback_QToolBar_devType ".} =
  var nimfunc = cast[ptr QToolBardevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QToolBarsetVisible*(self: gen_qtoolbar_types.QToolBar, visible: bool): void =
  fQToolBar_virtualbase_setVisible(self.h, visible)

type QToolBarsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarsetVisibleProc) =
  # TODO check subclass
  var tmp = new QToolBarsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_setVisible(self: ptr cQToolBar, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QToolBar_setVisible ".} =
  var nimfunc = cast[ptr QToolBarsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QToolBarsizeHint*(self: gen_qtoolbar_types.QToolBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQToolBar_virtualbase_sizeHint(self.h))

type QToolBarsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarsizeHintProc) =
  # TODO check subclass
  var tmp = new QToolBarsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_sizeHint(self: ptr cQToolBar, slot: int): pointer {.exportc: "miqt_exec_callback_QToolBar_sizeHint ".} =
  var nimfunc = cast[ptr QToolBarsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QToolBarminimumSizeHint*(self: gen_qtoolbar_types.QToolBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQToolBar_virtualbase_minimumSizeHint(self.h))

type QToolBarminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QToolBarminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_minimumSizeHint(self: ptr cQToolBar, slot: int): pointer {.exportc: "miqt_exec_callback_QToolBar_minimumSizeHint ".} =
  var nimfunc = cast[ptr QToolBarminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QToolBarheightForWidth*(self: gen_qtoolbar_types.QToolBar, param1: cint): cint =
  fQToolBar_virtualbase_heightForWidth(self.h, param1)

type QToolBarheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarheightForWidthProc) =
  # TODO check subclass
  var tmp = new QToolBarheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_heightForWidth(self: ptr cQToolBar, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QToolBar_heightForWidth ".} =
  var nimfunc = cast[ptr QToolBarheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QToolBarhasHeightForWidth*(self: gen_qtoolbar_types.QToolBar, ): bool =
  fQToolBar_virtualbase_hasHeightForWidth(self.h)

type QToolBarhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QToolBarhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_hasHeightForWidth(self: ptr cQToolBar, slot: int): bool {.exportc: "miqt_exec_callback_QToolBar_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QToolBarhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QToolBarpaintEngine*(self: gen_qtoolbar_types.QToolBar, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQToolBar_virtualbase_paintEngine(self.h))

type QToolBarpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarpaintEngineProc) =
  # TODO check subclass
  var tmp = new QToolBarpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_paintEngine(self: ptr cQToolBar, slot: int): pointer {.exportc: "miqt_exec_callback_QToolBar_paintEngine ".} =
  var nimfunc = cast[ptr QToolBarpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QToolBarmousePressEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QMouseEvent): void =
  fQToolBar_virtualbase_mousePressEvent(self.h, event.h)

type QToolBarmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarmousePressEventProc) =
  # TODO check subclass
  var tmp = new QToolBarmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_mousePressEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_mousePressEvent ".} =
  var nimfunc = cast[ptr QToolBarmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QToolBarmouseReleaseEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QMouseEvent): void =
  fQToolBar_virtualbase_mouseReleaseEvent(self.h, event.h)

type QToolBarmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QToolBarmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_mouseReleaseEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QToolBarmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QToolBarmouseDoubleClickEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QMouseEvent): void =
  fQToolBar_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QToolBarmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QToolBarmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_mouseDoubleClickEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QToolBarmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QToolBarmouseMoveEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QMouseEvent): void =
  fQToolBar_virtualbase_mouseMoveEvent(self.h, event.h)

type QToolBarmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QToolBarmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_mouseMoveEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QToolBarmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QToolBarwheelEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QWheelEvent): void =
  fQToolBar_virtualbase_wheelEvent(self.h, event.h)

type QToolBarwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarwheelEventProc) =
  # TODO check subclass
  var tmp = new QToolBarwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_wheelEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_wheelEvent ".} =
  var nimfunc = cast[ptr QToolBarwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QToolBarkeyPressEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QKeyEvent): void =
  fQToolBar_virtualbase_keyPressEvent(self.h, event.h)

type QToolBarkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QToolBarkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_keyPressEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_keyPressEvent ".} =
  var nimfunc = cast[ptr QToolBarkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QToolBarkeyReleaseEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QKeyEvent): void =
  fQToolBar_virtualbase_keyReleaseEvent(self.h, event.h)

type QToolBarkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QToolBarkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_keyReleaseEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QToolBarkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QToolBarfocusInEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QFocusEvent): void =
  fQToolBar_virtualbase_focusInEvent(self.h, event.h)

type QToolBarfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarfocusInEventProc) =
  # TODO check subclass
  var tmp = new QToolBarfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_focusInEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_focusInEvent ".} =
  var nimfunc = cast[ptr QToolBarfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QToolBarfocusOutEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QFocusEvent): void =
  fQToolBar_virtualbase_focusOutEvent(self.h, event.h)

type QToolBarfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QToolBarfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_focusOutEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_focusOutEvent ".} =
  var nimfunc = cast[ptr QToolBarfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QToolBarenterEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qcoreevent_types.QEvent): void =
  fQToolBar_virtualbase_enterEvent(self.h, event.h)

type QToolBarenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarenterEventProc) =
  # TODO check subclass
  var tmp = new QToolBarenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_enterEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_enterEvent ".} =
  var nimfunc = cast[ptr QToolBarenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QToolBarleaveEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qcoreevent_types.QEvent): void =
  fQToolBar_virtualbase_leaveEvent(self.h, event.h)

type QToolBarleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarleaveEventProc) =
  # TODO check subclass
  var tmp = new QToolBarleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_leaveEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_leaveEvent ".} =
  var nimfunc = cast[ptr QToolBarleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QToolBarmoveEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QMoveEvent): void =
  fQToolBar_virtualbase_moveEvent(self.h, event.h)

type QToolBarmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarmoveEventProc) =
  # TODO check subclass
  var tmp = new QToolBarmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_moveEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_moveEvent ".} =
  var nimfunc = cast[ptr QToolBarmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QToolBarresizeEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QResizeEvent): void =
  fQToolBar_virtualbase_resizeEvent(self.h, event.h)

type QToolBarresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarresizeEventProc) =
  # TODO check subclass
  var tmp = new QToolBarresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_resizeEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_resizeEvent ".} =
  var nimfunc = cast[ptr QToolBarresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QToolBarcloseEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QCloseEvent): void =
  fQToolBar_virtualbase_closeEvent(self.h, event.h)

type QToolBarcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarcloseEventProc) =
  # TODO check subclass
  var tmp = new QToolBarcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_closeEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_closeEvent ".} =
  var nimfunc = cast[ptr QToolBarcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QToolBarcontextMenuEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QContextMenuEvent): void =
  fQToolBar_virtualbase_contextMenuEvent(self.h, event.h)

type QToolBarcontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QToolBarcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_contextMenuEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_contextMenuEvent ".} =
  var nimfunc = cast[ptr QToolBarcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QToolBartabletEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QTabletEvent): void =
  fQToolBar_virtualbase_tabletEvent(self.h, event.h)

type QToolBartabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qtoolbar_types.QToolBar, slot: QToolBartabletEventProc) =
  # TODO check subclass
  var tmp = new QToolBartabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_tabletEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_tabletEvent ".} =
  var nimfunc = cast[ptr QToolBartabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QToolBardragEnterEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QDragEnterEvent): void =
  fQToolBar_virtualbase_dragEnterEvent(self.h, event.h)

type QToolBardragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qtoolbar_types.QToolBar, slot: QToolBardragEnterEventProc) =
  # TODO check subclass
  var tmp = new QToolBardragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_dragEnterEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_dragEnterEvent ".} =
  var nimfunc = cast[ptr QToolBardragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QToolBardragMoveEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QDragMoveEvent): void =
  fQToolBar_virtualbase_dragMoveEvent(self.h, event.h)

type QToolBardragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qtoolbar_types.QToolBar, slot: QToolBardragMoveEventProc) =
  # TODO check subclass
  var tmp = new QToolBardragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_dragMoveEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_dragMoveEvent ".} =
  var nimfunc = cast[ptr QToolBardragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QToolBardragLeaveEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QDragLeaveEvent): void =
  fQToolBar_virtualbase_dragLeaveEvent(self.h, event.h)

type QToolBardragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qtoolbar_types.QToolBar, slot: QToolBardragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QToolBardragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_dragLeaveEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QToolBardragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QToolBardropEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QDropEvent): void =
  fQToolBar_virtualbase_dropEvent(self.h, event.h)

type QToolBardropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qtoolbar_types.QToolBar, slot: QToolBardropEventProc) =
  # TODO check subclass
  var tmp = new QToolBardropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_dropEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_dropEvent ".} =
  var nimfunc = cast[ptr QToolBardropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QToolBarshowEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QShowEvent): void =
  fQToolBar_virtualbase_showEvent(self.h, event.h)

type QToolBarshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarshowEventProc) =
  # TODO check subclass
  var tmp = new QToolBarshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_showEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_showEvent ".} =
  var nimfunc = cast[ptr QToolBarshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QToolBarhideEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QHideEvent): void =
  fQToolBar_virtualbase_hideEvent(self.h, event.h)

type QToolBarhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarhideEventProc) =
  # TODO check subclass
  var tmp = new QToolBarhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_hideEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_hideEvent ".} =
  var nimfunc = cast[ptr QToolBarhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QToolBarnativeEvent*(self: gen_qtoolbar_types.QToolBar, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQToolBar_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QToolBarnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarnativeEventProc) =
  # TODO check subclass
  var tmp = new QToolBarnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_nativeEvent(self: ptr cQToolBar, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QToolBar_nativeEvent ".} =
  var nimfunc = cast[ptr QToolBarnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QToolBarmetric*(self: gen_qtoolbar_types.QToolBar, param1: cint): cint =
  fQToolBar_virtualbase_metric(self.h, cint(param1))

type QToolBarmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarmetricProc) =
  # TODO check subclass
  var tmp = new QToolBarmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_metric(self: ptr cQToolBar, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QToolBar_metric ".} =
  var nimfunc = cast[ptr QToolBarmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QToolBarinitPainter*(self: gen_qtoolbar_types.QToolBar, painter: gen_qpainter_types.QPainter): void =
  fQToolBar_virtualbase_initPainter(self.h, painter.h)

type QToolBarinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarinitPainterProc) =
  # TODO check subclass
  var tmp = new QToolBarinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_initPainter(self: ptr cQToolBar, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QToolBar_initPainter ".} =
  var nimfunc = cast[ptr QToolBarinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QToolBarredirected*(self: gen_qtoolbar_types.QToolBar, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQToolBar_virtualbase_redirected(self.h, offset.h))

type QToolBarredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarredirectedProc) =
  # TODO check subclass
  var tmp = new QToolBarredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_redirected(self: ptr cQToolBar, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QToolBar_redirected ".} =
  var nimfunc = cast[ptr QToolBarredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QToolBarsharedPainter*(self: gen_qtoolbar_types.QToolBar, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQToolBar_virtualbase_sharedPainter(self.h))

type QToolBarsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarsharedPainterProc) =
  # TODO check subclass
  var tmp = new QToolBarsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_sharedPainter(self: ptr cQToolBar, slot: int): pointer {.exportc: "miqt_exec_callback_QToolBar_sharedPainter ".} =
  var nimfunc = cast[ptr QToolBarsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QToolBarinputMethodEvent*(self: gen_qtoolbar_types.QToolBar, param1: gen_qevent_types.QInputMethodEvent): void =
  fQToolBar_virtualbase_inputMethodEvent(self.h, param1.h)

type QToolBarinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QToolBarinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_inputMethodEvent(self: ptr cQToolBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QToolBar_inputMethodEvent ".} =
  var nimfunc = cast[ptr QToolBarinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QToolBarinputMethodQuery*(self: gen_qtoolbar_types.QToolBar, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQToolBar_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QToolBarinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QToolBarinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_inputMethodQuery(self: ptr cQToolBar, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QToolBar_inputMethodQuery ".} =
  var nimfunc = cast[ptr QToolBarinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QToolBarfocusNextPrevChild*(self: gen_qtoolbar_types.QToolBar, next: bool): bool =
  fQToolBar_virtualbase_focusNextPrevChild(self.h, next)

type QToolBarfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QToolBarfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_focusNextPrevChild(self: ptr cQToolBar, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QToolBar_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QToolBarfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QToolBareventFilter*(self: gen_qtoolbar_types.QToolBar, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQToolBar_virtualbase_eventFilter(self.h, watched.h, event.h)

type QToolBareventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qtoolbar_types.QToolBar, slot: QToolBareventFilterProc) =
  # TODO check subclass
  var tmp = new QToolBareventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_eventFilter(self: ptr cQToolBar, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QToolBar_eventFilter ".} =
  var nimfunc = cast[ptr QToolBareventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QToolBartimerEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qcoreevent_types.QTimerEvent): void =
  fQToolBar_virtualbase_timerEvent(self.h, event.h)

type QToolBartimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qtoolbar_types.QToolBar, slot: QToolBartimerEventProc) =
  # TODO check subclass
  var tmp = new QToolBartimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_timerEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_timerEvent ".} =
  var nimfunc = cast[ptr QToolBartimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QToolBarchildEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qcoreevent_types.QChildEvent): void =
  fQToolBar_virtualbase_childEvent(self.h, event.h)

type QToolBarchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarchildEventProc) =
  # TODO check subclass
  var tmp = new QToolBarchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_childEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_childEvent ".} =
  var nimfunc = cast[ptr QToolBarchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QToolBarcustomEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qcoreevent_types.QEvent): void =
  fQToolBar_virtualbase_customEvent(self.h, event.h)

type QToolBarcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarcustomEventProc) =
  # TODO check subclass
  var tmp = new QToolBarcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_customEvent(self: ptr cQToolBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBar_customEvent ".} =
  var nimfunc = cast[ptr QToolBarcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QToolBarconnectNotify*(self: gen_qtoolbar_types.QToolBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQToolBar_virtualbase_connectNotify(self.h, signal.h)

type QToolBarconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QToolBarconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_connectNotify(self: ptr cQToolBar, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QToolBar_connectNotify ".} =
  var nimfunc = cast[ptr QToolBarconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QToolBardisconnectNotify*(self: gen_qtoolbar_types.QToolBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQToolBar_virtualbase_disconnectNotify(self.h, signal.h)

type QToolBardisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qtoolbar_types.QToolBar, slot: QToolBardisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QToolBardisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBar_disconnectNotify(self: ptr cQToolBar, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QToolBar_disconnectNotify ".} =
  var nimfunc = cast[ptr QToolBardisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qtoolbar_types.QToolBar) =
  fcQToolBar_delete(self.h)
