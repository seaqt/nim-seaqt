import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets") & " -fPIC"
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
  gen_qevent_types,
  gen_qicon_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qaction_types,
  gen_qstyleoption_types,
  gen_qwidget

type cQToolBar*{.exportc: "QToolBar", incompleteStruct.} = object

proc fcQToolBar_metaObject(self: pointer): pointer {.importc: "QToolBar_metaObject".}
proc fcQToolBar_metacast(self: pointer, param1: cstring): pointer {.importc: "QToolBar_metacast".}
proc fcQToolBar_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QToolBar_metacall".}
proc fcQToolBar_tr(s: cstring): struct_miqt_string {.importc: "QToolBar_tr".}
proc fcQToolBar_trUtf8(s: cstring): struct_miqt_string {.importc: "QToolBar_trUtf8".}
proc fcQToolBar_setMovable(self: pointer, movable: bool): void {.importc: "QToolBar_setMovable".}
proc fcQToolBar_isMovable(self: pointer): bool {.importc: "QToolBar_isMovable".}
proc fcQToolBar_setAllowedAreas(self: pointer, areas: cint): void {.importc: "QToolBar_setAllowedAreas".}
proc fcQToolBar_allowedAreas(self: pointer): cint {.importc: "QToolBar_allowedAreas".}
proc fcQToolBar_isAreaAllowed(self: pointer, area: cint): bool {.importc: "QToolBar_isAreaAllowed".}
proc fcQToolBar_setOrientation(self: pointer, orientation: cint): void {.importc: "QToolBar_setOrientation".}
proc fcQToolBar_orientation(self: pointer): cint {.importc: "QToolBar_orientation".}
proc fcQToolBar_clear(self: pointer): void {.importc: "QToolBar_clear".}
proc fcQToolBar_addAction(self: pointer, text: struct_miqt_string): pointer {.importc: "QToolBar_addAction".}
proc fcQToolBar_addAction2(self: pointer, icon: pointer, text: struct_miqt_string): pointer {.importc: "QToolBar_addAction2".}
proc fcQToolBar_addSeparator(self: pointer): pointer {.importc: "QToolBar_addSeparator".}
proc fcQToolBar_insertSeparator(self: pointer, before: pointer): pointer {.importc: "QToolBar_insertSeparator".}
proc fcQToolBar_addWidget(self: pointer, widget: pointer): pointer {.importc: "QToolBar_addWidget".}
proc fcQToolBar_insertWidget(self: pointer, before: pointer, widget: pointer): pointer {.importc: "QToolBar_insertWidget".}
proc fcQToolBar_actionGeometry(self: pointer, action: pointer): pointer {.importc: "QToolBar_actionGeometry".}
proc fcQToolBar_actionAt(self: pointer, p: pointer): pointer {.importc: "QToolBar_actionAt".}
proc fcQToolBar_actionAt2(self: pointer, x: cint, y: cint): pointer {.importc: "QToolBar_actionAt2".}
proc fcQToolBar_toggleViewAction(self: pointer): pointer {.importc: "QToolBar_toggleViewAction".}
proc fcQToolBar_iconSize(self: pointer): pointer {.importc: "QToolBar_iconSize".}
proc fcQToolBar_toolButtonStyle(self: pointer): cint {.importc: "QToolBar_toolButtonStyle".}
proc fcQToolBar_widgetForAction(self: pointer, action: pointer): pointer {.importc: "QToolBar_widgetForAction".}
proc fcQToolBar_isFloatable(self: pointer): bool {.importc: "QToolBar_isFloatable".}
proc fcQToolBar_setFloatable(self: pointer, floatable: bool): void {.importc: "QToolBar_setFloatable".}
proc fcQToolBar_isFloating(self: pointer): bool {.importc: "QToolBar_isFloating".}
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
proc fcQToolBar_vtbl(self: pointer): pointer {.importc: "QToolBar_vtbl".}
proc fcQToolBar_vdata(self: pointer): pointer {.importc: "QToolBar_vdata".}
type cQToolBarVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
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
proc fcQToolBar_virtualbase_metaObject(self: pointer): pointer {.importc: "QToolBar_virtualbase_metaObject".}
proc fcQToolBar_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QToolBar_virtualbase_metacast".}
proc fcQToolBar_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QToolBar_virtualbase_metacall".}
proc fcQToolBar_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_actionEvent".}
proc fcQToolBar_virtualbase_changeEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_changeEvent".}
proc fcQToolBar_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_paintEvent".}
proc fcQToolBar_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QToolBar_virtualbase_event".}
proc fcQToolBar_virtualbase_devType(self: pointer): cint {.importc: "QToolBar_virtualbase_devType".}
proc fcQToolBar_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QToolBar_virtualbase_setVisible".}
proc fcQToolBar_virtualbase_sizeHint(self: pointer): pointer {.importc: "QToolBar_virtualbase_sizeHint".}
proc fcQToolBar_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QToolBar_virtualbase_minimumSizeHint".}
proc fcQToolBar_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QToolBar_virtualbase_heightForWidth".}
proc fcQToolBar_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QToolBar_virtualbase_hasHeightForWidth".}
proc fcQToolBar_virtualbase_paintEngine(self: pointer): pointer {.importc: "QToolBar_virtualbase_paintEngine".}
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
proc fcQToolBar_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QToolBar_virtualbase_sharedPainter".}
proc fcQToolBar_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QToolBar_virtualbase_inputMethodEvent".}
proc fcQToolBar_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QToolBar_virtualbase_inputMethodQuery".}
proc fcQToolBar_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QToolBar_virtualbase_focusNextPrevChild".}
proc fcQToolBar_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QToolBar_virtualbase_eventFilter".}
proc fcQToolBar_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_timerEvent".}
proc fcQToolBar_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_childEvent".}
proc fcQToolBar_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QToolBar_virtualbase_customEvent".}
proc fcQToolBar_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QToolBar_virtualbase_connectNotify".}
proc fcQToolBar_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QToolBar_virtualbase_disconnectNotify".}
proc fcQToolBar_protectedbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QToolBar_protectedbase_initStyleOption".}
proc fcQToolBar_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QToolBar_protectedbase_updateMicroFocus".}
proc fcQToolBar_protectedbase_create(self: pointer): void {.importc: "QToolBar_protectedbase_create".}
proc fcQToolBar_protectedbase_destroy(self: pointer): void {.importc: "QToolBar_protectedbase_destroy".}
proc fcQToolBar_protectedbase_focusNextChild(self: pointer): bool {.importc: "QToolBar_protectedbase_focusNextChild".}
proc fcQToolBar_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QToolBar_protectedbase_focusPreviousChild".}
proc fcQToolBar_protectedbase_sender(self: pointer): pointer {.importc: "QToolBar_protectedbase_sender".}
proc fcQToolBar_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QToolBar_protectedbase_senderSignalIndex".}
proc fcQToolBar_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QToolBar_protectedbase_receivers".}
proc fcQToolBar_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QToolBar_protectedbase_isSignalConnected".}
proc fcQToolBar_new(vtbl, vdata: pointer, parent: pointer): ptr cQToolBar {.importc: "QToolBar_new".}
proc fcQToolBar_new2(vtbl, vdata: pointer, title: struct_miqt_string): ptr cQToolBar {.importc: "QToolBar_new2".}
proc fcQToolBar_new3(vtbl, vdata: pointer): ptr cQToolBar {.importc: "QToolBar_new3".}
proc fcQToolBar_new4(vtbl, vdata: pointer, title: struct_miqt_string, parent: pointer): ptr cQToolBar {.importc: "QToolBar_new4".}
proc fcQToolBar_staticMetaObject(): pointer {.importc: "QToolBar_staticMetaObject".}

proc metaObject*(self: gen_qtoolbar_types.QToolBar): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQToolBar_metaObject(self.h), owned: false)

proc metacast*(self: gen_qtoolbar_types.QToolBar, param1: cstring): pointer =
  fcQToolBar_metacast(self.h, param1)

proc metacall*(self: gen_qtoolbar_types.QToolBar, param1: cint, param2: cint, param3: pointer): cint =
  fcQToolBar_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtoolbar_types.QToolBar, s: cstring): string =
  let v_ms = fcQToolBar_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtoolbar_types.QToolBar, s: cstring): string =
  let v_ms = fcQToolBar_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setMovable*(self: gen_qtoolbar_types.QToolBar, movable: bool): void =
  fcQToolBar_setMovable(self.h, movable)

proc isMovable*(self: gen_qtoolbar_types.QToolBar): bool =
  fcQToolBar_isMovable(self.h)

proc setAllowedAreas*(self: gen_qtoolbar_types.QToolBar, areas: cint): void =
  fcQToolBar_setAllowedAreas(self.h, cint(areas))

proc allowedAreas*(self: gen_qtoolbar_types.QToolBar): cint =
  cint(fcQToolBar_allowedAreas(self.h))

proc isAreaAllowed*(self: gen_qtoolbar_types.QToolBar, area: cint): bool =
  fcQToolBar_isAreaAllowed(self.h, cint(area))

proc setOrientation*(self: gen_qtoolbar_types.QToolBar, orientation: cint): void =
  fcQToolBar_setOrientation(self.h, cint(orientation))

proc orientation*(self: gen_qtoolbar_types.QToolBar): cint =
  cint(fcQToolBar_orientation(self.h))

proc clear*(self: gen_qtoolbar_types.QToolBar): void =
  fcQToolBar_clear(self.h)

proc addAction*(self: gen_qtoolbar_types.QToolBar, text: openArray[char]): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQToolBar_addAction(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: false)

proc addAction*(self: gen_qtoolbar_types.QToolBar, icon: gen_qicon_types.QIcon, text: openArray[char]): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQToolBar_addAction2(self.h, icon.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: false)

proc addSeparator*(self: gen_qtoolbar_types.QToolBar): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQToolBar_addSeparator(self.h), owned: false)

proc insertSeparator*(self: gen_qtoolbar_types.QToolBar, before: gen_qaction_types.QAction): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQToolBar_insertSeparator(self.h, before.h), owned: false)

proc addWidget*(self: gen_qtoolbar_types.QToolBar, widget: gen_qwidget_types.QWidget): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQToolBar_addWidget(self.h, widget.h), owned: false)

proc insertWidget*(self: gen_qtoolbar_types.QToolBar, before: gen_qaction_types.QAction, widget: gen_qwidget_types.QWidget): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQToolBar_insertWidget(self.h, before.h, widget.h), owned: false)

proc actionGeometry*(self: gen_qtoolbar_types.QToolBar, action: gen_qaction_types.QAction): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQToolBar_actionGeometry(self.h, action.h), owned: true)

proc actionAt*(self: gen_qtoolbar_types.QToolBar, p: gen_qpoint_types.QPoint): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQToolBar_actionAt(self.h, p.h), owned: false)

proc actionAt*(self: gen_qtoolbar_types.QToolBar, x: cint, y: cint): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQToolBar_actionAt2(self.h, x, y), owned: false)

proc toggleViewAction*(self: gen_qtoolbar_types.QToolBar): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQToolBar_toggleViewAction(self.h), owned: false)

proc iconSize*(self: gen_qtoolbar_types.QToolBar): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQToolBar_iconSize(self.h), owned: true)

proc toolButtonStyle*(self: gen_qtoolbar_types.QToolBar): cint =
  cint(fcQToolBar_toolButtonStyle(self.h))

proc widgetForAction*(self: gen_qtoolbar_types.QToolBar, action: gen_qaction_types.QAction): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQToolBar_widgetForAction(self.h, action.h), owned: false)

proc isFloatable*(self: gen_qtoolbar_types.QToolBar): bool =
  fcQToolBar_isFloatable(self.h)

proc setFloatable*(self: gen_qtoolbar_types.QToolBar, floatable: bool): void =
  fcQToolBar_setFloatable(self.h, floatable)

proc isFloating*(self: gen_qtoolbar_types.QToolBar): bool =
  fcQToolBar_isFloating(self.h)

proc setIconSize*(self: gen_qtoolbar_types.QToolBar, iconSize: gen_qsize_types.QSize): void =
  fcQToolBar_setIconSize(self.h, iconSize.h)

proc setToolButtonStyle*(self: gen_qtoolbar_types.QToolBar, toolButtonStyle: cint): void =
  fcQToolBar_setToolButtonStyle(self.h, cint(toolButtonStyle))

proc actionTriggered*(self: gen_qtoolbar_types.QToolBar, action: gen_qaction_types.QAction): void =
  fcQToolBar_actionTriggered(self.h, action.h)

type QToolBaractionTriggeredSlot* = proc(action: gen_qaction_types.QAction)
proc cQToolBar_slot_callback_actionTriggered(slot: int, action: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QToolBaractionTriggeredSlot](cast[pointer](slot))
  let slotval1 = gen_qaction_types.QAction(h: action, owned: false)

  nimfunc[](slotval1)

proc cQToolBar_slot_callback_actionTriggered_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QToolBaractionTriggeredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onactionTriggered*(self: gen_qtoolbar_types.QToolBar, slot: QToolBaractionTriggeredSlot) =
  var tmp = new QToolBaractionTriggeredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_connect_actionTriggered(self.h, cast[int](addr tmp[]), cQToolBar_slot_callback_actionTriggered, cQToolBar_slot_callback_actionTriggered_release)

proc movableChanged*(self: gen_qtoolbar_types.QToolBar, movable: bool): void =
  fcQToolBar_movableChanged(self.h, movable)

type QToolBarmovableChangedSlot* = proc(movable: bool)
proc cQToolBar_slot_callback_movableChanged(slot: int, movable: bool) {.cdecl.} =
  let nimfunc = cast[ptr QToolBarmovableChangedSlot](cast[pointer](slot))
  let slotval1 = movable

  nimfunc[](slotval1)

proc cQToolBar_slot_callback_movableChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QToolBarmovableChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmovableChanged*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarmovableChangedSlot) =
  var tmp = new QToolBarmovableChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_connect_movableChanged(self.h, cast[int](addr tmp[]), cQToolBar_slot_callback_movableChanged, cQToolBar_slot_callback_movableChanged_release)

proc allowedAreasChanged*(self: gen_qtoolbar_types.QToolBar, allowedAreas: cint): void =
  fcQToolBar_allowedAreasChanged(self.h, cint(allowedAreas))

type QToolBarallowedAreasChangedSlot* = proc(allowedAreas: cint)
proc cQToolBar_slot_callback_allowedAreasChanged(slot: int, allowedAreas: cint) {.cdecl.} =
  let nimfunc = cast[ptr QToolBarallowedAreasChangedSlot](cast[pointer](slot))
  let slotval1 = cint(allowedAreas)

  nimfunc[](slotval1)

proc cQToolBar_slot_callback_allowedAreasChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QToolBarallowedAreasChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onallowedAreasChanged*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarallowedAreasChangedSlot) =
  var tmp = new QToolBarallowedAreasChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_connect_allowedAreasChanged(self.h, cast[int](addr tmp[]), cQToolBar_slot_callback_allowedAreasChanged, cQToolBar_slot_callback_allowedAreasChanged_release)

proc orientationChanged*(self: gen_qtoolbar_types.QToolBar, orientation: cint): void =
  fcQToolBar_orientationChanged(self.h, cint(orientation))

type QToolBarorientationChangedSlot* = proc(orientation: cint)
proc cQToolBar_slot_callback_orientationChanged(slot: int, orientation: cint) {.cdecl.} =
  let nimfunc = cast[ptr QToolBarorientationChangedSlot](cast[pointer](slot))
  let slotval1 = cint(orientation)

  nimfunc[](slotval1)

proc cQToolBar_slot_callback_orientationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QToolBarorientationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onorientationChanged*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarorientationChangedSlot) =
  var tmp = new QToolBarorientationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_connect_orientationChanged(self.h, cast[int](addr tmp[]), cQToolBar_slot_callback_orientationChanged, cQToolBar_slot_callback_orientationChanged_release)

proc iconSizeChanged*(self: gen_qtoolbar_types.QToolBar, iconSize: gen_qsize_types.QSize): void =
  fcQToolBar_iconSizeChanged(self.h, iconSize.h)

type QToolBariconSizeChangedSlot* = proc(iconSize: gen_qsize_types.QSize)
proc cQToolBar_slot_callback_iconSizeChanged(slot: int, iconSize: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QToolBariconSizeChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qsize_types.QSize(h: iconSize, owned: false)

  nimfunc[](slotval1)

proc cQToolBar_slot_callback_iconSizeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QToolBariconSizeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oniconSizeChanged*(self: gen_qtoolbar_types.QToolBar, slot: QToolBariconSizeChangedSlot) =
  var tmp = new QToolBariconSizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_connect_iconSizeChanged(self.h, cast[int](addr tmp[]), cQToolBar_slot_callback_iconSizeChanged, cQToolBar_slot_callback_iconSizeChanged_release)

proc toolButtonStyleChanged*(self: gen_qtoolbar_types.QToolBar, toolButtonStyle: cint): void =
  fcQToolBar_toolButtonStyleChanged(self.h, cint(toolButtonStyle))

type QToolBartoolButtonStyleChangedSlot* = proc(toolButtonStyle: cint)
proc cQToolBar_slot_callback_toolButtonStyleChanged(slot: int, toolButtonStyle: cint) {.cdecl.} =
  let nimfunc = cast[ptr QToolBartoolButtonStyleChangedSlot](cast[pointer](slot))
  let slotval1 = cint(toolButtonStyle)

  nimfunc[](slotval1)

proc cQToolBar_slot_callback_toolButtonStyleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QToolBartoolButtonStyleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontoolButtonStyleChanged*(self: gen_qtoolbar_types.QToolBar, slot: QToolBartoolButtonStyleChangedSlot) =
  var tmp = new QToolBartoolButtonStyleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_connect_toolButtonStyleChanged(self.h, cast[int](addr tmp[]), cQToolBar_slot_callback_toolButtonStyleChanged, cQToolBar_slot_callback_toolButtonStyleChanged_release)

proc topLevelChanged*(self: gen_qtoolbar_types.QToolBar, topLevel: bool): void =
  fcQToolBar_topLevelChanged(self.h, topLevel)

type QToolBartopLevelChangedSlot* = proc(topLevel: bool)
proc cQToolBar_slot_callback_topLevelChanged(slot: int, topLevel: bool) {.cdecl.} =
  let nimfunc = cast[ptr QToolBartopLevelChangedSlot](cast[pointer](slot))
  let slotval1 = topLevel

  nimfunc[](slotval1)

proc cQToolBar_slot_callback_topLevelChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QToolBartopLevelChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontopLevelChanged*(self: gen_qtoolbar_types.QToolBar, slot: QToolBartopLevelChangedSlot) =
  var tmp = new QToolBartopLevelChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_connect_topLevelChanged(self.h, cast[int](addr tmp[]), cQToolBar_slot_callback_topLevelChanged, cQToolBar_slot_callback_topLevelChanged_release)

proc visibilityChanged*(self: gen_qtoolbar_types.QToolBar, visible: bool): void =
  fcQToolBar_visibilityChanged(self.h, visible)

type QToolBarvisibilityChangedSlot* = proc(visible: bool)
proc cQToolBar_slot_callback_visibilityChanged(slot: int, visible: bool) {.cdecl.} =
  let nimfunc = cast[ptr QToolBarvisibilityChangedSlot](cast[pointer](slot))
  let slotval1 = visible

  nimfunc[](slotval1)

proc cQToolBar_slot_callback_visibilityChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QToolBarvisibilityChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvisibilityChanged*(self: gen_qtoolbar_types.QToolBar, slot: QToolBarvisibilityChangedSlot) =
  var tmp = new QToolBarvisibilityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBar_connect_visibilityChanged(self.h, cast[int](addr tmp[]), cQToolBar_slot_callback_visibilityChanged, cQToolBar_slot_callback_visibilityChanged_release)

proc tr*(_: type gen_qtoolbar_types.QToolBar, s: cstring, c: cstring): string =
  let v_ms = fcQToolBar_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtoolbar_types.QToolBar, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQToolBar_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtoolbar_types.QToolBar, s: cstring, c: cstring): string =
  let v_ms = fcQToolBar_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtoolbar_types.QToolBar, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQToolBar_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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
type QToolBarnativeEventProc* = proc(self: QToolBar, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
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
type QToolBarVTable* {.inheritable, pure.} = object
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
proc QToolBarmetaObject*(self: gen_qtoolbar_types.QToolBar): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQToolBar_virtualbase_metaObject(self.h), owned: false)

proc cQToolBar_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QToolBarmetacast*(self: gen_qtoolbar_types.QToolBar, param1: cstring): pointer =
  fcQToolBar_virtualbase_metacast(self.h, param1)

proc cQToolBar_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QToolBarmetacall*(self: gen_qtoolbar_types.QToolBar, param1: cint, param2: cint, param3: pointer): cint =
  fcQToolBar_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQToolBar_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QToolBaractionEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QActionEvent): void =
  fcQToolBar_virtualbase_actionEvent(self.h, event.h)

proc cQToolBar_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QToolBarchangeEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qcoreevent_types.QEvent): void =
  fcQToolBar_virtualbase_changeEvent(self.h, event.h)

proc cQToolBar_vtable_callback_changeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QToolBarpaintEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QPaintEvent): void =
  fcQToolBar_virtualbase_paintEvent(self.h, event.h)

proc cQToolBar_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QToolBarevent*(self: gen_qtoolbar_types.QToolBar, event: gen_qcoreevent_types.QEvent): bool =
  fcQToolBar_virtualbase_event(self.h, event.h)

proc cQToolBar_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QToolBardevType*(self: gen_qtoolbar_types.QToolBar): cint =
  fcQToolBar_virtualbase_devType(self.h)

proc cQToolBar_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QToolBarsetVisible*(self: gen_qtoolbar_types.QToolBar, visible: bool): void =
  fcQToolBar_virtualbase_setVisible(self.h, visible)

proc cQToolBar_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QToolBarsizeHint*(self: gen_qtoolbar_types.QToolBar): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQToolBar_virtualbase_sizeHint(self.h), owned: true)

proc cQToolBar_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QToolBarminimumSizeHint*(self: gen_qtoolbar_types.QToolBar): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQToolBar_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQToolBar_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QToolBarheightForWidth*(self: gen_qtoolbar_types.QToolBar, param1: cint): cint =
  fcQToolBar_virtualbase_heightForWidth(self.h, param1)

proc cQToolBar_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QToolBarhasHeightForWidth*(self: gen_qtoolbar_types.QToolBar): bool =
  fcQToolBar_virtualbase_hasHeightForWidth(self.h)

proc cQToolBar_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QToolBarpaintEngine*(self: gen_qtoolbar_types.QToolBar): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQToolBar_virtualbase_paintEngine(self.h), owned: false)

proc cQToolBar_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QToolBarmousePressEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QMouseEvent): void =
  fcQToolBar_virtualbase_mousePressEvent(self.h, event.h)

proc cQToolBar_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QToolBarmouseReleaseEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QMouseEvent): void =
  fcQToolBar_virtualbase_mouseReleaseEvent(self.h, event.h)

proc cQToolBar_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QToolBarmouseDoubleClickEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QMouseEvent): void =
  fcQToolBar_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQToolBar_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QToolBarmouseMoveEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QMouseEvent): void =
  fcQToolBar_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQToolBar_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QToolBarwheelEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QWheelEvent): void =
  fcQToolBar_virtualbase_wheelEvent(self.h, event.h)

proc cQToolBar_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QToolBarkeyPressEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QKeyEvent): void =
  fcQToolBar_virtualbase_keyPressEvent(self.h, event.h)

proc cQToolBar_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QToolBarkeyReleaseEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QKeyEvent): void =
  fcQToolBar_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQToolBar_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QToolBarfocusInEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QFocusEvent): void =
  fcQToolBar_virtualbase_focusInEvent(self.h, event.h)

proc cQToolBar_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QToolBarfocusOutEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QFocusEvent): void =
  fcQToolBar_virtualbase_focusOutEvent(self.h, event.h)

proc cQToolBar_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QToolBarenterEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qcoreevent_types.QEvent): void =
  fcQToolBar_virtualbase_enterEvent(self.h, event.h)

proc cQToolBar_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QToolBarleaveEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qcoreevent_types.QEvent): void =
  fcQToolBar_virtualbase_leaveEvent(self.h, event.h)

proc cQToolBar_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QToolBarmoveEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QMoveEvent): void =
  fcQToolBar_virtualbase_moveEvent(self.h, event.h)

proc cQToolBar_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QToolBarresizeEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QResizeEvent): void =
  fcQToolBar_virtualbase_resizeEvent(self.h, event.h)

proc cQToolBar_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QToolBarcloseEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QCloseEvent): void =
  fcQToolBar_virtualbase_closeEvent(self.h, event.h)

proc cQToolBar_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QToolBarcontextMenuEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QContextMenuEvent): void =
  fcQToolBar_virtualbase_contextMenuEvent(self.h, event.h)

proc cQToolBar_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QToolBartabletEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QTabletEvent): void =
  fcQToolBar_virtualbase_tabletEvent(self.h, event.h)

proc cQToolBar_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QToolBardragEnterEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QDragEnterEvent): void =
  fcQToolBar_virtualbase_dragEnterEvent(self.h, event.h)

proc cQToolBar_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QToolBardragMoveEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QDragMoveEvent): void =
  fcQToolBar_virtualbase_dragMoveEvent(self.h, event.h)

proc cQToolBar_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QToolBardragLeaveEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQToolBar_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQToolBar_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QToolBardropEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QDropEvent): void =
  fcQToolBar_virtualbase_dropEvent(self.h, event.h)

proc cQToolBar_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QToolBarshowEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QShowEvent): void =
  fcQToolBar_virtualbase_showEvent(self.h, event.h)

proc cQToolBar_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QToolBarhideEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qevent_types.QHideEvent): void =
  fcQToolBar_virtualbase_hideEvent(self.h, event.h)

proc cQToolBar_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QToolBarnativeEvent*(self: gen_qtoolbar_types.QToolBar, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQToolBar_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQToolBar_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QToolBarmetric*(self: gen_qtoolbar_types.QToolBar, param1: cint): cint =
  fcQToolBar_virtualbase_metric(self.h, cint(param1))

proc cQToolBar_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QToolBarinitPainter*(self: gen_qtoolbar_types.QToolBar, painter: gen_qpainter_types.QPainter): void =
  fcQToolBar_virtualbase_initPainter(self.h, painter.h)

proc cQToolBar_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QToolBarredirected*(self: gen_qtoolbar_types.QToolBar, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQToolBar_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQToolBar_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QToolBarsharedPainter*(self: gen_qtoolbar_types.QToolBar): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQToolBar_virtualbase_sharedPainter(self.h), owned: false)

proc cQToolBar_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QToolBarinputMethodEvent*(self: gen_qtoolbar_types.QToolBar, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQToolBar_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQToolBar_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QToolBarinputMethodQuery*(self: gen_qtoolbar_types.QToolBar, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQToolBar_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQToolBar_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QToolBarfocusNextPrevChild*(self: gen_qtoolbar_types.QToolBar, next: bool): bool =
  fcQToolBar_virtualbase_focusNextPrevChild(self.h, next)

proc cQToolBar_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QToolBareventFilter*(self: gen_qtoolbar_types.QToolBar, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQToolBar_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQToolBar_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QToolBartimerEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQToolBar_virtualbase_timerEvent(self.h, event.h)

proc cQToolBar_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QToolBarchildEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qcoreevent_types.QChildEvent): void =
  fcQToolBar_virtualbase_childEvent(self.h, event.h)

proc cQToolBar_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QToolBarcustomEvent*(self: gen_qtoolbar_types.QToolBar, event: gen_qcoreevent_types.QEvent): void =
  fcQToolBar_virtualbase_customEvent(self.h, event.h)

proc cQToolBar_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QToolBarconnectNotify*(self: gen_qtoolbar_types.QToolBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQToolBar_virtualbase_connectNotify(self.h, signal.h)

proc cQToolBar_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QToolBardisconnectNotify*(self: gen_qtoolbar_types.QToolBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQToolBar_virtualbase_disconnectNotify(self.h, signal.h)

proc cQToolBar_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarVTable](fcQToolBar_vdata(self))
  let self = QToolBar(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQToolBar* {.inheritable.} = ref object of QToolBar
  vtbl*: cQToolBarVTable
method metaObject*(self: VirtualQToolBar): gen_qobjectdefs_types.QMetaObject {.base.} =
  QToolBarmetaObject(self[])
proc cQToolBar_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQToolBar, param1: cstring): pointer {.base.} =
  QToolBarmetacast(self[], param1)
proc cQToolBar_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQToolBar, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QToolBarmetacall(self[], param1, param2, param3)
proc cQToolBar_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method actionEvent*(self: VirtualQToolBar, event: gen_qevent_types.QActionEvent): void {.base.} =
  QToolBaractionEvent(self[], event)
proc cQToolBar_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method changeEvent*(self: VirtualQToolBar, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QToolBarchangeEvent(self[], event)
proc cQToolBar_method_callback_changeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.changeEvent(slotval1)

method paintEvent*(self: VirtualQToolBar, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QToolBarpaintEvent(self[], event)
proc cQToolBar_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

method event*(self: VirtualQToolBar, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QToolBarevent(self[], event)
proc cQToolBar_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method devType*(self: VirtualQToolBar): cint {.base.} =
  QToolBardevType(self[])
proc cQToolBar_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQToolBar, visible: bool): void {.base.} =
  QToolBarsetVisible(self[], visible)
proc cQToolBar_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method sizeHint*(self: VirtualQToolBar): gen_qsize_types.QSize {.base.} =
  QToolBarsizeHint(self[])
proc cQToolBar_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQToolBar): gen_qsize_types.QSize {.base.} =
  QToolBarminimumSizeHint(self[])
proc cQToolBar_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method heightForWidth*(self: VirtualQToolBar, param1: cint): cint {.base.} =
  QToolBarheightForWidth(self[], param1)
proc cQToolBar_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQToolBar): bool {.base.} =
  QToolBarhasHeightForWidth(self[])
proc cQToolBar_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQToolBar): gen_qpaintengine_types.QPaintEngine {.base.} =
  QToolBarpaintEngine(self[])
proc cQToolBar_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mousePressEvent*(self: VirtualQToolBar, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QToolBarmousePressEvent(self[], event)
proc cQToolBar_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQToolBar, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QToolBarmouseReleaseEvent(self[], event)
proc cQToolBar_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQToolBar, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QToolBarmouseDoubleClickEvent(self[], event)
proc cQToolBar_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQToolBar, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QToolBarmouseMoveEvent(self[], event)
proc cQToolBar_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQToolBar, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QToolBarwheelEvent(self[], event)
proc cQToolBar_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method keyPressEvent*(self: VirtualQToolBar, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QToolBarkeyPressEvent(self[], event)
proc cQToolBar_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQToolBar, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QToolBarkeyReleaseEvent(self[], event)
proc cQToolBar_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQToolBar, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QToolBarfocusInEvent(self[], event)
proc cQToolBar_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQToolBar, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QToolBarfocusOutEvent(self[], event)
proc cQToolBar_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQToolBar, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QToolBarenterEvent(self[], event)
proc cQToolBar_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQToolBar, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QToolBarleaveEvent(self[], event)
proc cQToolBar_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method moveEvent*(self: VirtualQToolBar, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QToolBarmoveEvent(self[], event)
proc cQToolBar_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method resizeEvent*(self: VirtualQToolBar, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QToolBarresizeEvent(self[], event)
proc cQToolBar_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

method closeEvent*(self: VirtualQToolBar, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QToolBarcloseEvent(self[], event)
proc cQToolBar_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method contextMenuEvent*(self: VirtualQToolBar, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QToolBarcontextMenuEvent(self[], event)
proc cQToolBar_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

method tabletEvent*(self: VirtualQToolBar, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QToolBartabletEvent(self[], event)
proc cQToolBar_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method dragEnterEvent*(self: VirtualQToolBar, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QToolBardragEnterEvent(self[], event)
proc cQToolBar_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQToolBar, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QToolBardragMoveEvent(self[], event)
proc cQToolBar_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQToolBar, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QToolBardragLeaveEvent(self[], event)
proc cQToolBar_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQToolBar, event: gen_qevent_types.QDropEvent): void {.base.} =
  QToolBardropEvent(self[], event)
proc cQToolBar_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method showEvent*(self: VirtualQToolBar, event: gen_qevent_types.QShowEvent): void {.base.} =
  QToolBarshowEvent(self[], event)
proc cQToolBar_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method hideEvent*(self: VirtualQToolBar, event: gen_qevent_types.QHideEvent): void {.base.} =
  QToolBarhideEvent(self[], event)
proc cQToolBar_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQToolBar, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QToolBarnativeEvent(self[], eventType, message, resultVal)
proc cQToolBar_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQToolBar, param1: cint): cint {.base.} =
  QToolBarmetric(self[], param1)
proc cQToolBar_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQToolBar, painter: gen_qpainter_types.QPainter): void {.base.} =
  QToolBarinitPainter(self[], painter)
proc cQToolBar_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQToolBar, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QToolBarredirected(self[], offset)
proc cQToolBar_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQToolBar): gen_qpainter_types.QPainter {.base.} =
  QToolBarsharedPainter(self[])
proc cQToolBar_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQToolBar, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QToolBarinputMethodEvent(self[], param1)
proc cQToolBar_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQToolBar, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QToolBarinputMethodQuery(self[], param1)
proc cQToolBar_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQToolBar, next: bool): bool {.base.} =
  QToolBarfocusNextPrevChild(self[], next)
proc cQToolBar_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQToolBar, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QToolBareventFilter(self[], watched, event)
proc cQToolBar_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQToolBar, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QToolBartimerEvent(self[], event)
proc cQToolBar_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQToolBar, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QToolBarchildEvent(self[], event)
proc cQToolBar_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQToolBar, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QToolBarcustomEvent(self[], event)
proc cQToolBar_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQToolBar, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QToolBarconnectNotify(self[], signal)
proc cQToolBar_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQToolBar, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QToolBardisconnectNotify(self[], signal)
proc cQToolBar_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBar](fcQToolBar_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc initStyleOption*(self: gen_qtoolbar_types.QToolBar, option: gen_qstyleoption_types.QStyleOptionToolBar): void =
  fcQToolBar_protectedbase_initStyleOption(self.h, option.h)

proc updateMicroFocus*(self: gen_qtoolbar_types.QToolBar): void =
  fcQToolBar_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qtoolbar_types.QToolBar): void =
  fcQToolBar_protectedbase_create(self.h)

proc destroy*(self: gen_qtoolbar_types.QToolBar): void =
  fcQToolBar_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qtoolbar_types.QToolBar): bool =
  fcQToolBar_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qtoolbar_types.QToolBar): bool =
  fcQToolBar_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qtoolbar_types.QToolBar): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQToolBar_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qtoolbar_types.QToolBar): cint =
  fcQToolBar_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qtoolbar_types.QToolBar, signal: cstring): cint =
  fcQToolBar_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qtoolbar_types.QToolBar, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQToolBar_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qtoolbar_types.QToolBar,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QToolBarVTable = nil): gen_qtoolbar_types.QToolBar =
  let vtbl = if vtbl == nil: new QToolBarVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QToolBarVTable](fcQToolBar_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQToolBar_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQToolBar_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQToolBar_vtable_callback_metacall
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQToolBar_vtable_callback_actionEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQToolBar_vtable_callback_changeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQToolBar_vtable_callback_paintEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQToolBar_vtable_callback_event
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQToolBar_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQToolBar_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQToolBar_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQToolBar_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQToolBar_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQToolBar_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQToolBar_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQToolBar_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQToolBar_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQToolBar_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQToolBar_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQToolBar_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQToolBar_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQToolBar_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQToolBar_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQToolBar_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQToolBar_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQToolBar_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQToolBar_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQToolBar_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQToolBar_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQToolBar_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQToolBar_vtable_callback_tabletEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQToolBar_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQToolBar_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQToolBar_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQToolBar_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQToolBar_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQToolBar_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQToolBar_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQToolBar_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQToolBar_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQToolBar_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQToolBar_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQToolBar_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQToolBar_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQToolBar_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQToolBar_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQToolBar_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQToolBar_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQToolBar_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQToolBar_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQToolBar_vtable_callback_disconnectNotify
  gen_qtoolbar_types.QToolBar(h: fcQToolBar_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qtoolbar_types.QToolBar,
    title: openArray[char],
    vtbl: ref QToolBarVTable = nil): gen_qtoolbar_types.QToolBar =
  let vtbl = if vtbl == nil: new QToolBarVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QToolBarVTable](fcQToolBar_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQToolBar_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQToolBar_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQToolBar_vtable_callback_metacall
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQToolBar_vtable_callback_actionEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQToolBar_vtable_callback_changeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQToolBar_vtable_callback_paintEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQToolBar_vtable_callback_event
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQToolBar_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQToolBar_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQToolBar_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQToolBar_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQToolBar_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQToolBar_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQToolBar_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQToolBar_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQToolBar_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQToolBar_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQToolBar_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQToolBar_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQToolBar_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQToolBar_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQToolBar_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQToolBar_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQToolBar_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQToolBar_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQToolBar_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQToolBar_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQToolBar_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQToolBar_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQToolBar_vtable_callback_tabletEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQToolBar_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQToolBar_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQToolBar_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQToolBar_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQToolBar_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQToolBar_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQToolBar_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQToolBar_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQToolBar_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQToolBar_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQToolBar_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQToolBar_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQToolBar_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQToolBar_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQToolBar_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQToolBar_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQToolBar_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQToolBar_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQToolBar_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQToolBar_vtable_callback_disconnectNotify
  gen_qtoolbar_types.QToolBar(h: fcQToolBar_new2(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title)))), owned: true)

proc create*(T: type gen_qtoolbar_types.QToolBar,
    vtbl: ref QToolBarVTable = nil): gen_qtoolbar_types.QToolBar =
  let vtbl = if vtbl == nil: new QToolBarVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QToolBarVTable](fcQToolBar_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQToolBar_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQToolBar_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQToolBar_vtable_callback_metacall
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQToolBar_vtable_callback_actionEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQToolBar_vtable_callback_changeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQToolBar_vtable_callback_paintEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQToolBar_vtable_callback_event
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQToolBar_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQToolBar_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQToolBar_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQToolBar_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQToolBar_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQToolBar_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQToolBar_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQToolBar_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQToolBar_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQToolBar_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQToolBar_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQToolBar_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQToolBar_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQToolBar_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQToolBar_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQToolBar_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQToolBar_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQToolBar_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQToolBar_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQToolBar_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQToolBar_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQToolBar_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQToolBar_vtable_callback_tabletEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQToolBar_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQToolBar_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQToolBar_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQToolBar_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQToolBar_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQToolBar_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQToolBar_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQToolBar_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQToolBar_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQToolBar_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQToolBar_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQToolBar_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQToolBar_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQToolBar_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQToolBar_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQToolBar_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQToolBar_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQToolBar_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQToolBar_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQToolBar_vtable_callback_disconnectNotify
  gen_qtoolbar_types.QToolBar(h: fcQToolBar_new3(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qtoolbar_types.QToolBar,
    title: openArray[char], parent: gen_qwidget_types.QWidget,
    vtbl: ref QToolBarVTable = nil): gen_qtoolbar_types.QToolBar =
  let vtbl = if vtbl == nil: new QToolBarVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QToolBarVTable](fcQToolBar_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQToolBar_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQToolBar_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQToolBar_vtable_callback_metacall
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQToolBar_vtable_callback_actionEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQToolBar_vtable_callback_changeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQToolBar_vtable_callback_paintEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQToolBar_vtable_callback_event
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQToolBar_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQToolBar_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQToolBar_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQToolBar_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQToolBar_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQToolBar_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQToolBar_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQToolBar_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQToolBar_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQToolBar_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQToolBar_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQToolBar_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQToolBar_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQToolBar_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQToolBar_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQToolBar_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQToolBar_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQToolBar_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQToolBar_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQToolBar_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQToolBar_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQToolBar_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQToolBar_vtable_callback_tabletEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQToolBar_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQToolBar_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQToolBar_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQToolBar_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQToolBar_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQToolBar_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQToolBar_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQToolBar_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQToolBar_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQToolBar_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQToolBar_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQToolBar_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQToolBar_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQToolBar_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQToolBar_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQToolBar_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQToolBar_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQToolBar_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQToolBar_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQToolBar_vtable_callback_disconnectNotify
  gen_qtoolbar_types.QToolBar(h: fcQToolBar_new4(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), parent.h), owned: true)

const cQToolBar_mvtbl = cQToolBarVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQToolBar()[])](self.fcQToolBar_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQToolBar_method_callback_metaObject,
  metacast: cQToolBar_method_callback_metacast,
  metacall: cQToolBar_method_callback_metacall,
  actionEvent: cQToolBar_method_callback_actionEvent,
  changeEvent: cQToolBar_method_callback_changeEvent,
  paintEvent: cQToolBar_method_callback_paintEvent,
  event: cQToolBar_method_callback_event,
  devType: cQToolBar_method_callback_devType,
  setVisible: cQToolBar_method_callback_setVisible,
  sizeHint: cQToolBar_method_callback_sizeHint,
  minimumSizeHint: cQToolBar_method_callback_minimumSizeHint,
  heightForWidth: cQToolBar_method_callback_heightForWidth,
  hasHeightForWidth: cQToolBar_method_callback_hasHeightForWidth,
  paintEngine: cQToolBar_method_callback_paintEngine,
  mousePressEvent: cQToolBar_method_callback_mousePressEvent,
  mouseReleaseEvent: cQToolBar_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: cQToolBar_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: cQToolBar_method_callback_mouseMoveEvent,
  wheelEvent: cQToolBar_method_callback_wheelEvent,
  keyPressEvent: cQToolBar_method_callback_keyPressEvent,
  keyReleaseEvent: cQToolBar_method_callback_keyReleaseEvent,
  focusInEvent: cQToolBar_method_callback_focusInEvent,
  focusOutEvent: cQToolBar_method_callback_focusOutEvent,
  enterEvent: cQToolBar_method_callback_enterEvent,
  leaveEvent: cQToolBar_method_callback_leaveEvent,
  moveEvent: cQToolBar_method_callback_moveEvent,
  resizeEvent: cQToolBar_method_callback_resizeEvent,
  closeEvent: cQToolBar_method_callback_closeEvent,
  contextMenuEvent: cQToolBar_method_callback_contextMenuEvent,
  tabletEvent: cQToolBar_method_callback_tabletEvent,
  dragEnterEvent: cQToolBar_method_callback_dragEnterEvent,
  dragMoveEvent: cQToolBar_method_callback_dragMoveEvent,
  dragLeaveEvent: cQToolBar_method_callback_dragLeaveEvent,
  dropEvent: cQToolBar_method_callback_dropEvent,
  showEvent: cQToolBar_method_callback_showEvent,
  hideEvent: cQToolBar_method_callback_hideEvent,
  nativeEvent: cQToolBar_method_callback_nativeEvent,
  metric: cQToolBar_method_callback_metric,
  initPainter: cQToolBar_method_callback_initPainter,
  redirected: cQToolBar_method_callback_redirected,
  sharedPainter: cQToolBar_method_callback_sharedPainter,
  inputMethodEvent: cQToolBar_method_callback_inputMethodEvent,
  inputMethodQuery: cQToolBar_method_callback_inputMethodQuery,
  focusNextPrevChild: cQToolBar_method_callback_focusNextPrevChild,
  eventFilter: cQToolBar_method_callback_eventFilter,
  timerEvent: cQToolBar_method_callback_timerEvent,
  childEvent: cQToolBar_method_callback_childEvent,
  customEvent: cQToolBar_method_callback_customEvent,
  connectNotify: cQToolBar_method_callback_connectNotify,
  disconnectNotify: cQToolBar_method_callback_disconnectNotify,
)
proc create*(T: type gen_qtoolbar_types.QToolBar,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQToolBar) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQToolBar_new(addr(cQToolBar_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qtoolbar_types.QToolBar,
    title: openArray[char],
    inst: VirtualQToolBar) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQToolBar_new2(addr(cQToolBar_mvtbl), addr(inst[]), struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))))
  inst[].owned = true

proc create*(T: type gen_qtoolbar_types.QToolBar,
    inst: VirtualQToolBar) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQToolBar_new3(addr(cQToolBar_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qtoolbar_types.QToolBar,
    title: openArray[char], parent: gen_qwidget_types.QWidget,
    inst: VirtualQToolBar) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQToolBar_new4(addr(cQToolBar_mvtbl), addr(inst[]), struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qtoolbar_types.QToolBar): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQToolBar_staticMetaObject())
