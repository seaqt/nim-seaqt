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

proc fcQToolBar_metaObject(self: pointer, ): pointer {.importc: "QToolBar_metaObject".}
proc fcQToolBar_metacast(self: pointer, param1: cstring): pointer {.importc: "QToolBar_metacast".}
proc fcQToolBar_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QToolBar_metacall".}
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
proc fcQToolBar_connect_actionTriggered(self: pointer, slot: int, callback: proc (slot: int, action: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QToolBar_connect_actionTriggered".}
proc fcQToolBar_movableChanged(self: pointer, movable: bool): void {.importc: "QToolBar_movableChanged".}
proc fcQToolBar_connect_movableChanged(self: pointer, slot: int, callback: proc (slot: int, movable: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QToolBar_connect_movableChanged".}
proc fcQToolBar_allowedAreasChanged(self: pointer, allowedAreas: cint): void {.importc: "QToolBar_allowedAreasChanged".}
proc fcQToolBar_connect_allowedAreasChanged(self: pointer, slot: int, callback: proc (slot: int, allowedAreas: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QToolBar_connect_allowedAreasChanged".}
proc fcQToolBar_orientationChanged(self: pointer, orientation: cint): void {.importc: "QToolBar_orientationChanged".}
proc fcQToolBar_connect_orientationChanged(self: pointer, slot: int, callback: proc (slot: int, orientation: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QToolBar_connect_orientationChanged".}
proc fcQToolBar_iconSizeChanged(self: pointer, iconSize: pointer): void {.importc: "QToolBar_iconSizeChanged".}
proc fcQToolBar_connect_iconSizeChanged(self: pointer, slot: int, callback: proc (slot: int, iconSize: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QToolBar_connect_iconSizeChanged".}
proc fcQToolBar_toolButtonStyleChanged(self: pointer, toolButtonStyle: cint): void {.importc: "QToolBar_toolButtonStyleChanged".}
proc fcQToolBar_connect_toolButtonStyleChanged(self: pointer, slot: int, callback: proc (slot: int, toolButtonStyle: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QToolBar_connect_toolButtonStyleChanged".}
proc fcQToolBar_topLevelChanged(self: pointer, topLevel: bool): void {.importc: "QToolBar_topLevelChanged".}
proc fcQToolBar_connect_topLevelChanged(self: pointer, slot: int, callback: proc (slot: int, topLevel: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QToolBar_connect_topLevelChanged".}
proc fcQToolBar_visibilityChanged(self: pointer, visible: bool): void {.importc: "QToolBar_visibilityChanged".}
proc fcQToolBar_connect_visibilityChanged(self: pointer, slot: int, callback: proc (slot: int, visible: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QToolBar_connect_visibilityChanged".}
proc fcQToolBar_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QToolBar_tr2".}
proc fcQToolBar_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QToolBar_tr3".}
proc fcQToolBar_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QToolBar_trUtf82".}
proc fcQToolBar_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QToolBar_trUtf83".}
type cQToolBarVTable = object
  destructor*: proc(vtbl: ptr cQToolBarVTable, self: ptr cQToolBar) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
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
proc fcQToolBar_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QToolBar_virtualbase_metaObject".}
proc fcQToolBar_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QToolBar_virtualbase_metacast".}
proc fcQToolBar_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QToolBar_virtualbase_metacall".}
proc fcQToolBar_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_actionEvent".}
proc fcQToolBar_virtualbase_changeEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_changeEvent".}
proc fcQToolBar_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_paintEvent".}
proc fcQToolBar_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QToolBar_virtualbase_event".}
proc fcQToolBar_virtualbase_devType(self: pointer, ): cint {.importc: "QToolBar_virtualbase_devType".}
proc fcQToolBar_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QToolBar_virtualbase_setVisible".}
proc fcQToolBar_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QToolBar_virtualbase_sizeHint".}
proc fcQToolBar_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QToolBar_virtualbase_minimumSizeHint".}
proc fcQToolBar_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QToolBar_virtualbase_heightForWidth".}
proc fcQToolBar_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QToolBar_virtualbase_hasHeightForWidth".}
proc fcQToolBar_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QToolBar_virtualbase_paintEngine".}
proc fcQToolBar_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_mousePressEvent".}
proc fcQToolBar_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_mouseReleaseEvent".}
proc fcQToolBar_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_mouseDoubleClickEvent".}
proc fcQToolBar_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_mouseMoveEvent".}
proc fcQToolBar_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_wheelEvent".}
proc fcQToolBar_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_keyPressEvent".}
proc fcQToolBar_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_keyReleaseEvent".}
proc fcQToolBar_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_focusInEvent".}
proc fcQToolBar_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_focusOutEvent".}
proc fcQToolBar_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_enterEvent".}
proc fcQToolBar_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_leaveEvent".}
proc fcQToolBar_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_moveEvent".}
proc fcQToolBar_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_resizeEvent".}
proc fcQToolBar_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_closeEvent".}
proc fcQToolBar_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_contextMenuEvent".}
proc fcQToolBar_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_tabletEvent".}
proc fcQToolBar_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_dragEnterEvent".}
proc fcQToolBar_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_dragMoveEvent".}
proc fcQToolBar_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_dragLeaveEvent".}
proc fcQToolBar_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_dropEvent".}
proc fcQToolBar_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_showEvent".}
proc fcQToolBar_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_hideEvent".}
proc fcQToolBar_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QToolBar_virtualbase_nativeEvent".}
proc fcQToolBar_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QToolBar_virtualbase_metric".}
proc fcQToolBar_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QToolBar_virtualbase_initPainter".}
proc fcQToolBar_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QToolBar_virtualbase_redirected".}
proc fcQToolBar_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QToolBar_virtualbase_sharedPainter".}
proc fcQToolBar_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QToolBar_virtualbase_inputMethodEvent".}
proc fcQToolBar_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QToolBar_virtualbase_inputMethodQuery".}
proc fcQToolBar_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QToolBar_virtualbase_focusNextPrevChild".}
proc fcQToolBar_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QToolBar_virtualbase_eventFilter".}
proc fcQToolBar_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_timerEvent".}
proc fcQToolBar_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_childEvent".}
proc fcQToolBar_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_customEvent".}
proc fcQToolBar_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QToolBar_virtualbase_connectNotify".}
proc fcQToolBar_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QToolBar_virtualbase_disconnectNotify".}
proc fcQToolBar_new(vtbl: pointer, parent: pointer): ptr cQToolBar {.importc: "QToolBar_new".}
proc fcQToolBar_new2(vtbl: pointer, title: struct_miqt_string): ptr cQToolBar {.importc: "QToolBar_new2".}
proc fcQToolBar_new3(vtbl: pointer, ): ptr cQToolBar {.importc: "QToolBar_new3".}
proc fcQToolBar_new4(vtbl: pointer, title: struct_miqt_string, parent: pointer): ptr cQToolBar {.importc: "QToolBar_new4".}
proc fcQToolBar_staticMetaObject(): pointer {.importc: "QToolBar_staticMetaObject".}
proc fcQToolBar_delete(self: pointer) {.importc: "QToolBar_delete".}

proc metaObject*(self: gen_qtoolbar_types.QToolBar, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQToolBar_metaObject(self.h))

proc metacast*(self: gen_qtoolbar_types.QToolBar, param1: cstring): pointer =
  fcQToolBar_metacast(self.h, param1)

proc metacall*(self: gen_qtoolbar_types.QToolBar, param1: cint, param2: cint, param3: pointer): cint =
  fcQToolBar_metacall(self.h, cint(param1), param2, param3)

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
proc miqt_exec_callback_cQToolBar_actionTriggered(slot: int, action: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QToolBaractionTriggeredSlot](cast[pointer](slot))
  let slotval1 = gen_qaction_types.QAction(h: action)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQToolBar_actionTriggered_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QToolBaractionTriggeredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onactionTriggered*(self: gen_qtoolbar_types.QToolBar, slot: QToolBaractionTriggeredSlot) =
  var tmp = new QToolBaractionTriggeredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_connect_actionTriggered(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQToolBar_actionTriggered, miqt_exec_callback_cQToolBar_actionTriggered_release)

proc movableChanged*(self: gen_qtoolbar_types.QToolBar, movable: bool): void =
  fcQToolBar_movableChanged(self.h, movable)

type QToolBarmovableChangedSlot* = proc(movable: bool)
proc miqt_exec_callback_cQToolBar_movableChanged(slot: int, movable: bool) {.cdecl.} =
  let nimfunc = cast[ptr QToolBarmovableChangedSlot](cast[pointer](slot))
  let slotval1 = movable

  nimfunc[](slotval1)

proc miqt_exec_callback_cQToolBar_movableChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QToolBarmovableChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmovableChanged*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarmovableChangedSlot) =
  var tmp = new QToolBarmovableChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_connect_movableChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQToolBar_movableChanged, miqt_exec_callback_cQToolBar_movableChanged_release)

proc allowedAreasChanged*(self: gen_qtoolbar_types.QToolBar, allowedAreas: cint): void =
  fcQToolBar_allowedAreasChanged(self.h, cint(allowedAreas))

type QToolBarallowedAreasChangedSlot* = proc(allowedAreas: cint)
proc miqt_exec_callback_cQToolBar_allowedAreasChanged(slot: int, allowedAreas: cint) {.cdecl.} =
  let nimfunc = cast[ptr QToolBarallowedAreasChangedSlot](cast[pointer](slot))
  let slotval1 = cint(allowedAreas)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQToolBar_allowedAreasChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QToolBarallowedAreasChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onallowedAreasChanged*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarallowedAreasChangedSlot) =
  var tmp = new QToolBarallowedAreasChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_connect_allowedAreasChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQToolBar_allowedAreasChanged, miqt_exec_callback_cQToolBar_allowedAreasChanged_release)

proc orientationChanged*(self: gen_qtoolbar_types.QToolBar, orientation: cint): void =
  fcQToolBar_orientationChanged(self.h, cint(orientation))

type QToolBarorientationChangedSlot* = proc(orientation: cint)
proc miqt_exec_callback_cQToolBar_orientationChanged(slot: int, orientation: cint) {.cdecl.} =
  let nimfunc = cast[ptr QToolBarorientationChangedSlot](cast[pointer](slot))
  let slotval1 = cint(orientation)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQToolBar_orientationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QToolBarorientationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onorientationChanged*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarorientationChangedSlot) =
  var tmp = new QToolBarorientationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_connect_orientationChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQToolBar_orientationChanged, miqt_exec_callback_cQToolBar_orientationChanged_release)

proc iconSizeChanged*(self: gen_qtoolbar_types.QToolBar, iconSize: gen_qsize_types.QSize): void =
  fcQToolBar_iconSizeChanged(self.h, iconSize.h)

type QToolBariconSizeChangedSlot* = proc(iconSize: gen_qsize_types.QSize)
proc miqt_exec_callback_cQToolBar_iconSizeChanged(slot: int, iconSize: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QToolBariconSizeChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qsize_types.QSize(h: iconSize)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQToolBar_iconSizeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QToolBariconSizeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oniconSizeChanged*(self: gen_qtoolbar_types.QToolBar, slot: QToolBariconSizeChangedSlot) =
  var tmp = new QToolBariconSizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_connect_iconSizeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQToolBar_iconSizeChanged, miqt_exec_callback_cQToolBar_iconSizeChanged_release)

proc toolButtonStyleChanged*(self: gen_qtoolbar_types.QToolBar, toolButtonStyle: cint): void =
  fcQToolBar_toolButtonStyleChanged(self.h, cint(toolButtonStyle))

type QToolBartoolButtonStyleChangedSlot* = proc(toolButtonStyle: cint)
proc miqt_exec_callback_cQToolBar_toolButtonStyleChanged(slot: int, toolButtonStyle: cint) {.cdecl.} =
  let nimfunc = cast[ptr QToolBartoolButtonStyleChangedSlot](cast[pointer](slot))
  let slotval1 = cint(toolButtonStyle)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQToolBar_toolButtonStyleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QToolBartoolButtonStyleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontoolButtonStyleChanged*(self: gen_qtoolbar_types.QToolBar, slot: QToolBartoolButtonStyleChangedSlot) =
  var tmp = new QToolBartoolButtonStyleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_connect_toolButtonStyleChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQToolBar_toolButtonStyleChanged, miqt_exec_callback_cQToolBar_toolButtonStyleChanged_release)

proc topLevelChanged*(self: gen_qtoolbar_types.QToolBar, topLevel: bool): void =
  fcQToolBar_topLevelChanged(self.h, topLevel)

type QToolBartopLevelChangedSlot* = proc(topLevel: bool)
proc miqt_exec_callback_cQToolBar_topLevelChanged(slot: int, topLevel: bool) {.cdecl.} =
  let nimfunc = cast[ptr QToolBartopLevelChangedSlot](cast[pointer](slot))
  let slotval1 = topLevel

  nimfunc[](slotval1)

proc miqt_exec_callback_cQToolBar_topLevelChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QToolBartopLevelChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontopLevelChanged*(self: gen_qtoolbar_types.QToolBar, slot: QToolBartopLevelChangedSlot) =
  var tmp = new QToolBartopLevelChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_connect_topLevelChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQToolBar_topLevelChanged, miqt_exec_callback_cQToolBar_topLevelChanged_release)

proc visibilityChanged*(self: gen_qtoolbar_types.QToolBar, visible: bool): void =
  fcQToolBar_visibilityChanged(self.h, visible)

type QToolBarvisibilityChangedSlot* = proc(visible: bool)
proc miqt_exec_callback_cQToolBar_visibilityChanged(slot: int, visible: bool) {.cdecl.} =
  let nimfunc = cast[ptr QToolBarvisibilityChangedSlot](cast[pointer](slot))
  let slotval1 = visible

  nimfunc[](slotval1)

proc miqt_exec_callback_cQToolBar_visibilityChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QToolBarvisibilityChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvisibilityChanged*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarvisibilityChangedSlot) =
  var tmp = new QToolBarvisibilityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_connect_visibilityChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQToolBar_visibilityChanged, miqt_exec_callback_cQToolBar_visibilityChanged_release)

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

type QToolBarmetaObjectProc* = proc(self: QToolBar): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QToolBarmetacastProc* = proc(self: QToolBar, param1: cstring): pointer {.raises: [], gcsafe.}
type QToolBarmetacallProc* = proc(self: QToolBar, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QToolBaractionEventProc* = proc(self: QToolBar, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QToolBarchangeEventProc* = proc(self: QToolBar, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QToolBarpaintEventProc* = proc(self: QToolBar, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QToolBareventProc* = proc(self: QToolBar, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QToolBardevTypeProc* = proc(self: QToolBar): cint {.raises: [], gcsafe.}
type QToolBarsetVisibleProc* = proc(self: QToolBar, visible: bool): void {.raises: [], gcsafe.}
type QToolBarsizeHintProc* = proc(self: QToolBar): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QToolBarminimumSizeHintProc* = proc(self: QToolBar): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QToolBarheightForWidthProc* = proc(self: QToolBar, param1: cint): cint {.raises: [], gcsafe.}
type QToolBarhasHeightForWidthProc* = proc(self: QToolBar): bool {.raises: [], gcsafe.}
type QToolBarpaintEngineProc* = proc(self: QToolBar): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QToolBarmousePressEventProc* = proc(self: QToolBar, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QToolBarmouseReleaseEventProc* = proc(self: QToolBar, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QToolBarmouseDoubleClickEventProc* = proc(self: QToolBar, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QToolBarmouseMoveEventProc* = proc(self: QToolBar, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QToolBarwheelEventProc* = proc(self: QToolBar, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QToolBarkeyPressEventProc* = proc(self: QToolBar, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QToolBarkeyReleaseEventProc* = proc(self: QToolBar, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QToolBarfocusInEventProc* = proc(self: QToolBar, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QToolBarfocusOutEventProc* = proc(self: QToolBar, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QToolBarenterEventProc* = proc(self: QToolBar, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QToolBarleaveEventProc* = proc(self: QToolBar, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QToolBarmoveEventProc* = proc(self: QToolBar, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QToolBarresizeEventProc* = proc(self: QToolBar, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QToolBarcloseEventProc* = proc(self: QToolBar, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QToolBarcontextMenuEventProc* = proc(self: QToolBar, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QToolBartabletEventProc* = proc(self: QToolBar, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QToolBardragEnterEventProc* = proc(self: QToolBar, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QToolBardragMoveEventProc* = proc(self: QToolBar, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QToolBardragLeaveEventProc* = proc(self: QToolBar, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QToolBardropEventProc* = proc(self: QToolBar, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QToolBarshowEventProc* = proc(self: QToolBar, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QToolBarhideEventProc* = proc(self: QToolBar, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QToolBarnativeEventProc* = proc(self: QToolBar, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QToolBarmetricProc* = proc(self: QToolBar, param1: cint): cint {.raises: [], gcsafe.}
type QToolBarinitPainterProc* = proc(self: QToolBar, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QToolBarredirectedProc* = proc(self: QToolBar, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QToolBarsharedPainterProc* = proc(self: QToolBar): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QToolBarinputMethodEventProc* = proc(self: QToolBar, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QToolBarinputMethodQueryProc* = proc(self: QToolBar, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QToolBarfocusNextPrevChildProc* = proc(self: QToolBar, next: bool): bool {.raises: [], gcsafe.}
type QToolBareventFilterProc* = proc(self: QToolBar, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QToolBartimerEventProc* = proc(self: QToolBar, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QToolBarchildEventProc* = proc(self: QToolBar, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QToolBarcustomEventProc* = proc(self: QToolBar, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QToolBarconnectNotifyProc* = proc(self: QToolBar, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QToolBardisconnectNotifyProc* = proc(self: QToolBar, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QToolBarVTable* = object
  vtbl: cQToolBarVTable
  metaObject*: QToolBarmetaObjectProc
  metacast*: QToolBarmetacastProc
  metacall*: QToolBarmetacallProc
  actionEvent*: QToolBaractionEventProc
  changeEvent*: QToolBarchangeEventProc
  paintEvent*: QToolBarpaintEventProc
  event*: QToolBareventProc
  devType*: QToolBardevTypeProc
  setVisible*: QToolBarsetVisibleProc
  sizeHint*: QToolBarsizeHintProc
  minimumSizeHint*: QToolBarminimumSizeHintProc
  heightForWidth*: QToolBarheightForWidthProc
  hasHeightForWidth*: QToolBarhasHeightForWidthProc
  paintEngine*: QToolBarpaintEngineProc
  mousePressEvent*: QToolBarmousePressEventProc
  mouseReleaseEvent*: QToolBarmouseReleaseEventProc
  mouseDoubleClickEvent*: QToolBarmouseDoubleClickEventProc
  mouseMoveEvent*: QToolBarmouseMoveEventProc
  wheelEvent*: QToolBarwheelEventProc
  keyPressEvent*: QToolBarkeyPressEventProc
  keyReleaseEvent*: QToolBarkeyReleaseEventProc
  focusInEvent*: QToolBarfocusInEventProc
  focusOutEvent*: QToolBarfocusOutEventProc
  enterEvent*: QToolBarenterEventProc
  leaveEvent*: QToolBarleaveEventProc
  moveEvent*: QToolBarmoveEventProc
  resizeEvent*: QToolBarresizeEventProc
  closeEvent*: QToolBarcloseEventProc
  contextMenuEvent*: QToolBarcontextMenuEventProc
  tabletEvent*: QToolBartabletEventProc
  dragEnterEvent*: QToolBardragEnterEventProc
  dragMoveEvent*: QToolBardragMoveEventProc
  dragLeaveEvent*: QToolBardragLeaveEventProc
  dropEvent*: QToolBardropEventProc
  showEvent*: QToolBarshowEventProc
  hideEvent*: QToolBarhideEventProc
  nativeEvent*: QToolBarnativeEventProc
  metric*: QToolBarmetricProc
  initPainter*: QToolBarinitPainterProc
  redirected*: QToolBarredirectedProc
  sharedPainter*: QToolBarsharedPainterProc
  inputMethodEvent*: QToolBarinputMethodEventProc
  inputMethodQuery*: QToolBarinputMethodQueryProc
  focusNextPrevChild*: QToolBarfocusNextPrevChildProc
  eventFilter*: QToolBareventFilterProc
  timerEvent*: QToolBartimerEventProc
  childEvent*: QToolBarchildEventProc
  customEvent*: QToolBarcustomEventProc
  connectNotify*: QToolBarconnectNotifyProc
  disconnectNotify*: QToolBardisconnectNotifyProc
proc QToolBarmetaObject*(self: gen_qtoolbar_types.QToolBar, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQToolBar_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQToolBar_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QToolBarmetacast*(self: gen_qtoolbar_types.QToolBar, param1: cstring): pointer =
  fcQToolBar_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQToolBar_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QToolBarmetacall*(self: gen_qtoolbar_types.QToolBar, param1: cint, param2: cint, param3: pointer): cint =
  fcQToolBar_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQToolBar_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QToolBaractionEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QActionEvent): void =
  fcQToolBar_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBar_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QToolBarchangeEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qcoreevent_types.QEvent): void =
  fcQToolBar_virtualbase_changeEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBar_changeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].changeEvent(self, slotval1)

proc QToolBarpaintEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QPaintEvent): void =
  fcQToolBar_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBar_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)
  vtbl[].paintEvent(self, slotval1)

proc QToolBarevent*(self: gen_qtoolbar_types.QToolBar, event: gen_qcoreevent_types.QEvent): bool =
  fcQToolBar_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQToolBar_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QToolBardevType*(self: gen_qtoolbar_types.QToolBar, ): cint =
  fcQToolBar_virtualbase_devType(self.h)

proc miqt_exec_callback_cQToolBar_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QToolBarsetVisible*(self: gen_qtoolbar_types.QToolBar, visible: bool): void =
  fcQToolBar_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQToolBar_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QToolBarsizeHint*(self: gen_qtoolbar_types.QToolBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQToolBar_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQToolBar_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QToolBarminimumSizeHint*(self: gen_qtoolbar_types.QToolBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQToolBar_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQToolBar_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QToolBarheightForWidth*(self: gen_qtoolbar_types.QToolBar, param1: cint): cint =
  fcQToolBar_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQToolBar_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QToolBarhasHeightForWidth*(self: gen_qtoolbar_types.QToolBar, ): bool =
  fcQToolBar_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQToolBar_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QToolBarpaintEngine*(self: gen_qtoolbar_types.QToolBar, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQToolBar_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQToolBar_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QToolBarmousePressEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QMouseEvent): void =
  fcQToolBar_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBar_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QToolBarmouseReleaseEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QMouseEvent): void =
  fcQToolBar_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBar_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QToolBarmouseDoubleClickEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QMouseEvent): void =
  fcQToolBar_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBar_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QToolBarmouseMoveEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QMouseEvent): void =
  fcQToolBar_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBar_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QToolBarwheelEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QWheelEvent): void =
  fcQToolBar_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBar_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QToolBarkeyPressEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QKeyEvent): void =
  fcQToolBar_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBar_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QToolBarkeyReleaseEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QKeyEvent): void =
  fcQToolBar_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBar_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QToolBarfocusInEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QFocusEvent): void =
  fcQToolBar_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBar_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QToolBarfocusOutEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QFocusEvent): void =
  fcQToolBar_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBar_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QToolBarenterEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qcoreevent_types.QEvent): void =
  fcQToolBar_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBar_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QToolBarleaveEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qcoreevent_types.QEvent): void =
  fcQToolBar_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBar_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QToolBarmoveEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QMoveEvent): void =
  fcQToolBar_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBar_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QToolBarresizeEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QResizeEvent): void =
  fcQToolBar_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBar_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QToolBarcloseEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QCloseEvent): void =
  fcQToolBar_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBar_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QToolBarcontextMenuEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QContextMenuEvent): void =
  fcQToolBar_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBar_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QToolBartabletEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QTabletEvent): void =
  fcQToolBar_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBar_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QToolBardragEnterEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QDragEnterEvent): void =
  fcQToolBar_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBar_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QToolBardragMoveEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QDragMoveEvent): void =
  fcQToolBar_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBar_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QToolBardragLeaveEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQToolBar_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBar_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QToolBardropEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QDropEvent): void =
  fcQToolBar_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBar_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QToolBarshowEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QShowEvent): void =
  fcQToolBar_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBar_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QToolBarhideEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QHideEvent): void =
  fcQToolBar_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBar_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QToolBarnativeEvent*(self: gen_qtoolbar_types.QToolBar, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQToolBar_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQToolBar_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QToolBarmetric*(self: gen_qtoolbar_types.QToolBar, param1: cint): cint =
  fcQToolBar_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQToolBar_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QToolBarinitPainter*(self: gen_qtoolbar_types.QToolBar, painter: gen_qpainter_types.QPainter): void =
  fcQToolBar_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQToolBar_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QToolBarredirected*(self: gen_qtoolbar_types.QToolBar, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQToolBar_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQToolBar_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QToolBarsharedPainter*(self: gen_qtoolbar_types.QToolBar, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQToolBar_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQToolBar_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QToolBarinputMethodEvent*(self: gen_qtoolbar_types.QToolBar, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQToolBar_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQToolBar_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QToolBarinputMethodQuery*(self: gen_qtoolbar_types.QToolBar, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQToolBar_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQToolBar_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QToolBarfocusNextPrevChild*(self: gen_qtoolbar_types.QToolBar, next: bool): bool =
  fcQToolBar_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQToolBar_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QToolBareventFilter*(self: gen_qtoolbar_types.QToolBar, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQToolBar_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQToolBar_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QToolBartimerEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQToolBar_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBar_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QToolBarchildEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qcoreevent_types.QChildEvent): void =
  fcQToolBar_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBar_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QToolBarcustomEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qcoreevent_types.QEvent): void =
  fcQToolBar_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBar_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QToolBarconnectNotify*(self: gen_qtoolbar_types.QToolBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQToolBar_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQToolBar_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QToolBardisconnectNotify*(self: gen_qtoolbar_types.QToolBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQToolBar_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQToolBar_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](vtbl)
  let self = QToolBar(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qtoolbar_types.QToolBar,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QToolBarVTable = nil): gen_qtoolbar_types.QToolBar =
  let vtbl = if vtbl == nil: new QToolBarVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQToolBarVTable, _: ptr cQToolBar) {.cdecl.} =
    let vtbl = cast[ref QToolBarVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQToolBar_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQToolBar_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQToolBar_metacall
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQToolBar_actionEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQToolBar_changeEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQToolBar_paintEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQToolBar_event
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQToolBar_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQToolBar_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQToolBar_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQToolBar_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQToolBar_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQToolBar_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQToolBar_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQToolBar_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQToolBar_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQToolBar_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQToolBar_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQToolBar_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQToolBar_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQToolBar_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQToolBar_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQToolBar_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQToolBar_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQToolBar_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQToolBar_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQToolBar_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQToolBar_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQToolBar_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQToolBar_tabletEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQToolBar_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQToolBar_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQToolBar_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQToolBar_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQToolBar_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQToolBar_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQToolBar_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQToolBar_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQToolBar_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQToolBar_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQToolBar_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQToolBar_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQToolBar_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQToolBar_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQToolBar_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQToolBar_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQToolBar_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQToolBar_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQToolBar_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQToolBar_disconnectNotify
  gen_qtoolbar_types.QToolBar(h: fcQToolBar_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qtoolbar_types.QToolBar,
    title: string,
    vtbl: ref QToolBarVTable = nil): gen_qtoolbar_types.QToolBar =
  let vtbl = if vtbl == nil: new QToolBarVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQToolBarVTable, _: ptr cQToolBar) {.cdecl.} =
    let vtbl = cast[ref QToolBarVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQToolBar_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQToolBar_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQToolBar_metacall
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQToolBar_actionEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQToolBar_changeEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQToolBar_paintEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQToolBar_event
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQToolBar_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQToolBar_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQToolBar_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQToolBar_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQToolBar_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQToolBar_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQToolBar_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQToolBar_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQToolBar_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQToolBar_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQToolBar_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQToolBar_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQToolBar_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQToolBar_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQToolBar_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQToolBar_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQToolBar_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQToolBar_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQToolBar_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQToolBar_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQToolBar_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQToolBar_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQToolBar_tabletEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQToolBar_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQToolBar_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQToolBar_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQToolBar_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQToolBar_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQToolBar_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQToolBar_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQToolBar_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQToolBar_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQToolBar_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQToolBar_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQToolBar_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQToolBar_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQToolBar_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQToolBar_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQToolBar_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQToolBar_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQToolBar_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQToolBar_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQToolBar_disconnectNotify
  gen_qtoolbar_types.QToolBar(h: fcQToolBar_new2(addr(vtbl[]), struct_miqt_string(data: title, len: csize_t(len(title)))))

proc create*(T: type gen_qtoolbar_types.QToolBar,
    vtbl: ref QToolBarVTable = nil): gen_qtoolbar_types.QToolBar =
  let vtbl = if vtbl == nil: new QToolBarVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQToolBarVTable, _: ptr cQToolBar) {.cdecl.} =
    let vtbl = cast[ref QToolBarVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQToolBar_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQToolBar_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQToolBar_metacall
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQToolBar_actionEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQToolBar_changeEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQToolBar_paintEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQToolBar_event
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQToolBar_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQToolBar_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQToolBar_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQToolBar_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQToolBar_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQToolBar_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQToolBar_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQToolBar_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQToolBar_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQToolBar_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQToolBar_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQToolBar_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQToolBar_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQToolBar_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQToolBar_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQToolBar_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQToolBar_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQToolBar_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQToolBar_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQToolBar_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQToolBar_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQToolBar_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQToolBar_tabletEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQToolBar_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQToolBar_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQToolBar_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQToolBar_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQToolBar_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQToolBar_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQToolBar_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQToolBar_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQToolBar_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQToolBar_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQToolBar_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQToolBar_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQToolBar_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQToolBar_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQToolBar_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQToolBar_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQToolBar_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQToolBar_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQToolBar_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQToolBar_disconnectNotify
  gen_qtoolbar_types.QToolBar(h: fcQToolBar_new3(addr(vtbl[]), ))

proc create*(T: type gen_qtoolbar_types.QToolBar,
    title: string, parent: gen_qwidget_types.QWidget,
    vtbl: ref QToolBarVTable = nil): gen_qtoolbar_types.QToolBar =
  let vtbl = if vtbl == nil: new QToolBarVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQToolBarVTable, _: ptr cQToolBar) {.cdecl.} =
    let vtbl = cast[ref QToolBarVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQToolBar_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQToolBar_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQToolBar_metacall
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQToolBar_actionEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQToolBar_changeEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQToolBar_paintEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQToolBar_event
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQToolBar_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQToolBar_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQToolBar_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQToolBar_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQToolBar_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQToolBar_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQToolBar_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQToolBar_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQToolBar_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQToolBar_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQToolBar_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQToolBar_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQToolBar_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQToolBar_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQToolBar_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQToolBar_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQToolBar_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQToolBar_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQToolBar_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQToolBar_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQToolBar_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQToolBar_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQToolBar_tabletEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQToolBar_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQToolBar_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQToolBar_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQToolBar_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQToolBar_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQToolBar_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQToolBar_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQToolBar_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQToolBar_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQToolBar_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQToolBar_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQToolBar_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQToolBar_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQToolBar_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQToolBar_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQToolBar_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQToolBar_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQToolBar_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQToolBar_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQToolBar_disconnectNotify
  gen_qtoolbar_types.QToolBar(h: fcQToolBar_new4(addr(vtbl[]), struct_miqt_string(data: title, len: csize_t(len(title))), parent.h))

proc staticMetaObject*(_: type gen_qtoolbar_types.QToolBar): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQToolBar_staticMetaObject())
proc delete*(self: gen_qtoolbar_types.QToolBar) =
  fcQToolBar_delete(self.h)
