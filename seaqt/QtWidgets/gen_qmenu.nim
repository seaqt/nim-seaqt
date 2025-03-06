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
{.compile("gen_qmenu.cpp", cflags).}


import ./gen_qmenu_types
export gen_qmenu_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qaction_types,
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
  gen_qaction_types,
  gen_qevent_types,
  gen_qicon_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qstyleoption_types,
  gen_qwidget

type cQMenu*{.exportc: "QMenu", incompleteStruct.} = object

proc fcQMenu_metaObject(self: pointer, ): pointer {.importc: "QMenu_metaObject".}
proc fcQMenu_metacast(self: pointer, param1: cstring): pointer {.importc: "QMenu_metacast".}
proc fcQMenu_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMenu_metacall".}
proc fcQMenu_tr(s: cstring): struct_miqt_string {.importc: "QMenu_tr".}
proc fcQMenu_addMenu(self: pointer, menu: pointer): pointer {.importc: "QMenu_addMenu".}
proc fcQMenu_addMenuWithTitle(self: pointer, title: struct_miqt_string): pointer {.importc: "QMenu_addMenuWithTitle".}
proc fcQMenu_addMenu2(self: pointer, icon: pointer, title: struct_miqt_string): pointer {.importc: "QMenu_addMenu2".}
proc fcQMenu_addSeparator(self: pointer, ): pointer {.importc: "QMenu_addSeparator".}
proc fcQMenu_addSection(self: pointer, text: struct_miqt_string): pointer {.importc: "QMenu_addSection".}
proc fcQMenu_addSection2(self: pointer, icon: pointer, text: struct_miqt_string): pointer {.importc: "QMenu_addSection2".}
proc fcQMenu_insertMenu(self: pointer, before: pointer, menu: pointer): pointer {.importc: "QMenu_insertMenu".}
proc fcQMenu_insertSeparator(self: pointer, before: pointer): pointer {.importc: "QMenu_insertSeparator".}
proc fcQMenu_insertSection(self: pointer, before: pointer, text: struct_miqt_string): pointer {.importc: "QMenu_insertSection".}
proc fcQMenu_insertSection2(self: pointer, before: pointer, icon: pointer, text: struct_miqt_string): pointer {.importc: "QMenu_insertSection2".}
proc fcQMenu_isEmpty(self: pointer, ): bool {.importc: "QMenu_isEmpty".}
proc fcQMenu_clear(self: pointer, ): void {.importc: "QMenu_clear".}
proc fcQMenu_setTearOffEnabled(self: pointer, tearOffEnabled: bool): void {.importc: "QMenu_setTearOffEnabled".}
proc fcQMenu_isTearOffEnabled(self: pointer, ): bool {.importc: "QMenu_isTearOffEnabled".}
proc fcQMenu_isTearOffMenuVisible(self: pointer, ): bool {.importc: "QMenu_isTearOffMenuVisible".}
proc fcQMenu_showTearOffMenu(self: pointer, ): void {.importc: "QMenu_showTearOffMenu".}
proc fcQMenu_showTearOffMenuWithPos(self: pointer, pos: pointer): void {.importc: "QMenu_showTearOffMenuWithPos".}
proc fcQMenu_hideTearOffMenu(self: pointer, ): void {.importc: "QMenu_hideTearOffMenu".}
proc fcQMenu_setDefaultAction(self: pointer, defaultAction: pointer): void {.importc: "QMenu_setDefaultAction".}
proc fcQMenu_defaultAction(self: pointer, ): pointer {.importc: "QMenu_defaultAction".}
proc fcQMenu_setActiveAction(self: pointer, act: pointer): void {.importc: "QMenu_setActiveAction".}
proc fcQMenu_activeAction(self: pointer, ): pointer {.importc: "QMenu_activeAction".}
proc fcQMenu_popup(self: pointer, pos: pointer): void {.importc: "QMenu_popup".}
proc fcQMenu_exec(self: pointer, ): pointer {.importc: "QMenu_exec".}
proc fcQMenu_execWithPos(self: pointer, pos: pointer): pointer {.importc: "QMenu_execWithPos".}
proc fcQMenu_exec2(actions: struct_miqt_array, pos: pointer): pointer {.importc: "QMenu_exec2".}
proc fcQMenu_sizeHint(self: pointer, ): pointer {.importc: "QMenu_sizeHint".}
proc fcQMenu_actionGeometry(self: pointer, param1: pointer): pointer {.importc: "QMenu_actionGeometry".}
proc fcQMenu_actionAt(self: pointer, param1: pointer): pointer {.importc: "QMenu_actionAt".}
proc fcQMenu_menuAction(self: pointer, ): pointer {.importc: "QMenu_menuAction".}
proc fcQMenu_menuInAction(action: pointer): pointer {.importc: "QMenu_menuInAction".}
proc fcQMenu_title(self: pointer, ): struct_miqt_string {.importc: "QMenu_title".}
proc fcQMenu_setTitle(self: pointer, title: struct_miqt_string): void {.importc: "QMenu_setTitle".}
proc fcQMenu_icon(self: pointer, ): pointer {.importc: "QMenu_icon".}
proc fcQMenu_setIcon(self: pointer, icon: pointer): void {.importc: "QMenu_setIcon".}
proc fcQMenu_setNoReplayFor(self: pointer, widget: pointer): void {.importc: "QMenu_setNoReplayFor".}
proc fcQMenu_separatorsCollapsible(self: pointer, ): bool {.importc: "QMenu_separatorsCollapsible".}
proc fcQMenu_setSeparatorsCollapsible(self: pointer, collapse: bool): void {.importc: "QMenu_setSeparatorsCollapsible".}
proc fcQMenu_toolTipsVisible(self: pointer, ): bool {.importc: "QMenu_toolTipsVisible".}
proc fcQMenu_setToolTipsVisible(self: pointer, visible: bool): void {.importc: "QMenu_setToolTipsVisible".}
proc fcQMenu_aboutToShow(self: pointer, ): void {.importc: "QMenu_aboutToShow".}
proc fcQMenu_connect_aboutToShow(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMenu_connect_aboutToShow".}
proc fcQMenu_aboutToHide(self: pointer, ): void {.importc: "QMenu_aboutToHide".}
proc fcQMenu_connect_aboutToHide(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMenu_connect_aboutToHide".}
proc fcQMenu_triggered(self: pointer, action: pointer): void {.importc: "QMenu_triggered".}
proc fcQMenu_connect_triggered(self: pointer, slot: int, callback: proc (slot: int, action: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMenu_connect_triggered".}
proc fcQMenu_hovered(self: pointer, action: pointer): void {.importc: "QMenu_hovered".}
proc fcQMenu_connect_hovered(self: pointer, slot: int, callback: proc (slot: int, action: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMenu_connect_hovered".}
proc fcQMenu_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMenu_tr2".}
proc fcQMenu_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMenu_tr3".}
proc fcQMenu_popup2(self: pointer, pos: pointer, at: pointer): void {.importc: "QMenu_popup2".}
proc fcQMenu_exec22(self: pointer, pos: pointer, at: pointer): pointer {.importc: "QMenu_exec22".}
proc fcQMenu_exec3(actions: struct_miqt_array, pos: pointer, at: pointer): pointer {.importc: "QMenu_exec3".}
proc fcQMenu_exec4(actions: struct_miqt_array, pos: pointer, at: pointer, parent: pointer): pointer {.importc: "QMenu_exec4".}
type cQMenuVTable = object
  destructor*: proc(vtbl: ptr cQMenuVTable, self: ptr cQMenu) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(vtbl, self: pointer, option: pointer, action: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQMenu_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QMenu_virtualbase_metaObject".}
proc fcQMenu_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QMenu_virtualbase_metacast".}
proc fcQMenu_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMenu_virtualbase_metacall".}
proc fcQMenu_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QMenu_virtualbase_sizeHint".}
proc fcQMenu_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QMenu_virtualbase_changeEvent".}
proc fcQMenu_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QMenu_virtualbase_keyPressEvent".}
proc fcQMenu_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void {.importc: "QMenu_virtualbase_mouseReleaseEvent".}
proc fcQMenu_virtualbase_mousePressEvent(self: pointer, param1: pointer): void {.importc: "QMenu_virtualbase_mousePressEvent".}
proc fcQMenu_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void {.importc: "QMenu_virtualbase_mouseMoveEvent".}
proc fcQMenu_virtualbase_wheelEvent(self: pointer, param1: pointer): void {.importc: "QMenu_virtualbase_wheelEvent".}
proc fcQMenu_virtualbase_enterEvent(self: pointer, param1: pointer): void {.importc: "QMenu_virtualbase_enterEvent".}
proc fcQMenu_virtualbase_leaveEvent(self: pointer, param1: pointer): void {.importc: "QMenu_virtualbase_leaveEvent".}
proc fcQMenu_virtualbase_hideEvent(self: pointer, param1: pointer): void {.importc: "QMenu_virtualbase_hideEvent".}
proc fcQMenu_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QMenu_virtualbase_paintEvent".}
proc fcQMenu_virtualbase_actionEvent(self: pointer, param1: pointer): void {.importc: "QMenu_virtualbase_actionEvent".}
proc fcQMenu_virtualbase_timerEvent(self: pointer, param1: pointer): void {.importc: "QMenu_virtualbase_timerEvent".}
proc fcQMenu_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QMenu_virtualbase_event".}
proc fcQMenu_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QMenu_virtualbase_focusNextPrevChild".}
proc fcQMenu_virtualbase_initStyleOption(self: pointer, option: pointer, action: pointer): void {.importc: "QMenu_virtualbase_initStyleOption".}
proc fcQMenu_virtualbase_devType(self: pointer, ): cint {.importc: "QMenu_virtualbase_devType".}
proc fcQMenu_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QMenu_virtualbase_setVisible".}
proc fcQMenu_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QMenu_virtualbase_minimumSizeHint".}
proc fcQMenu_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QMenu_virtualbase_heightForWidth".}
proc fcQMenu_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QMenu_virtualbase_hasHeightForWidth".}
proc fcQMenu_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QMenu_virtualbase_paintEngine".}
proc fcQMenu_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QMenu_virtualbase_mouseDoubleClickEvent".}
proc fcQMenu_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QMenu_virtualbase_keyReleaseEvent".}
proc fcQMenu_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QMenu_virtualbase_focusInEvent".}
proc fcQMenu_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QMenu_virtualbase_focusOutEvent".}
proc fcQMenu_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QMenu_virtualbase_moveEvent".}
proc fcQMenu_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QMenu_virtualbase_resizeEvent".}
proc fcQMenu_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QMenu_virtualbase_closeEvent".}
proc fcQMenu_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QMenu_virtualbase_contextMenuEvent".}
proc fcQMenu_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QMenu_virtualbase_tabletEvent".}
proc fcQMenu_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QMenu_virtualbase_dragEnterEvent".}
proc fcQMenu_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QMenu_virtualbase_dragMoveEvent".}
proc fcQMenu_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QMenu_virtualbase_dragLeaveEvent".}
proc fcQMenu_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QMenu_virtualbase_dropEvent".}
proc fcQMenu_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QMenu_virtualbase_showEvent".}
proc fcQMenu_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QMenu_virtualbase_nativeEvent".}
proc fcQMenu_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QMenu_virtualbase_metric".}
proc fcQMenu_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QMenu_virtualbase_initPainter".}
proc fcQMenu_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QMenu_virtualbase_redirected".}
proc fcQMenu_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QMenu_virtualbase_sharedPainter".}
proc fcQMenu_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QMenu_virtualbase_inputMethodEvent".}
proc fcQMenu_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QMenu_virtualbase_inputMethodQuery".}
proc fcQMenu_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QMenu_virtualbase_eventFilter".}
proc fcQMenu_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QMenu_virtualbase_childEvent".}
proc fcQMenu_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QMenu_virtualbase_customEvent".}
proc fcQMenu_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QMenu_virtualbase_connectNotify".}
proc fcQMenu_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QMenu_virtualbase_disconnectNotify".}
proc fcQMenu_protectedbase_columnCount(self: pointer, ): cint {.importc: "QMenu_protectedbase_columnCount".}
proc fcQMenu_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QMenu_protectedbase_updateMicroFocus".}
proc fcQMenu_protectedbase_create(self: pointer, ): void {.importc: "QMenu_protectedbase_create".}
proc fcQMenu_protectedbase_destroy(self: pointer, ): void {.importc: "QMenu_protectedbase_destroy".}
proc fcQMenu_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QMenu_protectedbase_focusNextChild".}
proc fcQMenu_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QMenu_protectedbase_focusPreviousChild".}
proc fcQMenu_protectedbase_sender(self: pointer, ): pointer {.importc: "QMenu_protectedbase_sender".}
proc fcQMenu_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QMenu_protectedbase_senderSignalIndex".}
proc fcQMenu_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QMenu_protectedbase_receivers".}
proc fcQMenu_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QMenu_protectedbase_isSignalConnected".}
proc fcQMenu_new(vtbl: pointer, parent: pointer): ptr cQMenu {.importc: "QMenu_new".}
proc fcQMenu_new2(vtbl: pointer, ): ptr cQMenu {.importc: "QMenu_new2".}
proc fcQMenu_new3(vtbl: pointer, title: struct_miqt_string): ptr cQMenu {.importc: "QMenu_new3".}
proc fcQMenu_new4(vtbl: pointer, title: struct_miqt_string, parent: pointer): ptr cQMenu {.importc: "QMenu_new4".}
proc fcQMenu_staticMetaObject(): pointer {.importc: "QMenu_staticMetaObject".}
proc fcQMenu_delete(self: pointer) {.importc: "QMenu_delete".}

proc metaObject*(self: gen_qmenu_types.QMenu, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMenu_metaObject(self.h))

proc metacast*(self: gen_qmenu_types.QMenu, param1: cstring): pointer =
  fcQMenu_metacast(self.h, param1)

proc metacall*(self: gen_qmenu_types.QMenu, param1: cint, param2: cint, param3: pointer): cint =
  fcQMenu_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmenu_types.QMenu, s: cstring): string =
  let v_ms = fcQMenu_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addMenu*(self: gen_qmenu_types.QMenu, menu: gen_qmenu_types.QMenu): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenu_addMenu(self.h, menu.h))

proc addMenu*(self: gen_qmenu_types.QMenu, title: string): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fcQMenu_addMenuWithTitle(self.h, struct_miqt_string(data: title, len: csize_t(len(title)))))

proc addMenu*(self: gen_qmenu_types.QMenu, icon: gen_qicon_types.QIcon, title: string): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fcQMenu_addMenu2(self.h, icon.h, struct_miqt_string(data: title, len: csize_t(len(title)))))

proc addSeparator*(self: gen_qmenu_types.QMenu, ): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenu_addSeparator(self.h))

proc addSection*(self: gen_qmenu_types.QMenu, text: string): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenu_addSection(self.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc addSection*(self: gen_qmenu_types.QMenu, icon: gen_qicon_types.QIcon, text: string): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenu_addSection2(self.h, icon.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc insertMenu*(self: gen_qmenu_types.QMenu, before: gen_qaction_types.QAction, menu: gen_qmenu_types.QMenu): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenu_insertMenu(self.h, before.h, menu.h))

proc insertSeparator*(self: gen_qmenu_types.QMenu, before: gen_qaction_types.QAction): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenu_insertSeparator(self.h, before.h))

proc insertSection*(self: gen_qmenu_types.QMenu, before: gen_qaction_types.QAction, text: string): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenu_insertSection(self.h, before.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc insertSection*(self: gen_qmenu_types.QMenu, before: gen_qaction_types.QAction, icon: gen_qicon_types.QIcon, text: string): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenu_insertSection2(self.h, before.h, icon.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc isEmpty*(self: gen_qmenu_types.QMenu, ): bool =
  fcQMenu_isEmpty(self.h)

proc clear*(self: gen_qmenu_types.QMenu, ): void =
  fcQMenu_clear(self.h)

proc setTearOffEnabled*(self: gen_qmenu_types.QMenu, tearOffEnabled: bool): void =
  fcQMenu_setTearOffEnabled(self.h, tearOffEnabled)

proc isTearOffEnabled*(self: gen_qmenu_types.QMenu, ): bool =
  fcQMenu_isTearOffEnabled(self.h)

proc isTearOffMenuVisible*(self: gen_qmenu_types.QMenu, ): bool =
  fcQMenu_isTearOffMenuVisible(self.h)

proc showTearOffMenu*(self: gen_qmenu_types.QMenu, ): void =
  fcQMenu_showTearOffMenu(self.h)

proc showTearOffMenu*(self: gen_qmenu_types.QMenu, pos: gen_qpoint_types.QPoint): void =
  fcQMenu_showTearOffMenuWithPos(self.h, pos.h)

proc hideTearOffMenu*(self: gen_qmenu_types.QMenu, ): void =
  fcQMenu_hideTearOffMenu(self.h)

proc setDefaultAction*(self: gen_qmenu_types.QMenu, defaultAction: gen_qaction_types.QAction): void =
  fcQMenu_setDefaultAction(self.h, defaultAction.h)

proc defaultAction*(self: gen_qmenu_types.QMenu, ): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenu_defaultAction(self.h))

proc setActiveAction*(self: gen_qmenu_types.QMenu, act: gen_qaction_types.QAction): void =
  fcQMenu_setActiveAction(self.h, act.h)

proc activeAction*(self: gen_qmenu_types.QMenu, ): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenu_activeAction(self.h))

proc popup*(self: gen_qmenu_types.QMenu, pos: gen_qpoint_types.QPoint): void =
  fcQMenu_popup(self.h, pos.h)

proc exec*(self: gen_qmenu_types.QMenu, ): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenu_exec(self.h))

proc exec*(self: gen_qmenu_types.QMenu, pos: gen_qpoint_types.QPoint): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenu_execWithPos(self.h, pos.h))

proc exec*(_: type gen_qmenu_types.QMenu, actions: seq[gen_qaction_types.QAction], pos: gen_qpoint_types.QPoint): gen_qaction_types.QAction =
  var actions_CArray = newSeq[pointer](len(actions))
  for i in 0..<len(actions):
    actions_CArray[i] = actions[i].h

  gen_qaction_types.QAction(h: fcQMenu_exec2(struct_miqt_array(len: csize_t(len(actions)), data: if len(actions) == 0: nil else: addr(actions_CArray[0])), pos.h))

proc sizeHint*(self: gen_qmenu_types.QMenu, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMenu_sizeHint(self.h))

proc actionGeometry*(self: gen_qmenu_types.QMenu, param1: gen_qaction_types.QAction): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQMenu_actionGeometry(self.h, param1.h))

proc actionAt*(self: gen_qmenu_types.QMenu, param1: gen_qpoint_types.QPoint): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenu_actionAt(self.h, param1.h))

proc menuAction*(self: gen_qmenu_types.QMenu, ): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenu_menuAction(self.h))

proc menuInAction*(_: type gen_qmenu_types.QMenu, action: gen_qaction_types.QAction): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fcQMenu_menuInAction(action.h))

proc title*(self: gen_qmenu_types.QMenu, ): string =
  let v_ms = fcQMenu_title(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTitle*(self: gen_qmenu_types.QMenu, title: string): void =
  fcQMenu_setTitle(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

proc icon*(self: gen_qmenu_types.QMenu, ): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQMenu_icon(self.h))

proc setIcon*(self: gen_qmenu_types.QMenu, icon: gen_qicon_types.QIcon): void =
  fcQMenu_setIcon(self.h, icon.h)

proc setNoReplayFor*(self: gen_qmenu_types.QMenu, widget: gen_qwidget_types.QWidget): void =
  fcQMenu_setNoReplayFor(self.h, widget.h)

proc separatorsCollapsible*(self: gen_qmenu_types.QMenu, ): bool =
  fcQMenu_separatorsCollapsible(self.h)

proc setSeparatorsCollapsible*(self: gen_qmenu_types.QMenu, collapse: bool): void =
  fcQMenu_setSeparatorsCollapsible(self.h, collapse)

proc toolTipsVisible*(self: gen_qmenu_types.QMenu, ): bool =
  fcQMenu_toolTipsVisible(self.h)

proc setToolTipsVisible*(self: gen_qmenu_types.QMenu, visible: bool): void =
  fcQMenu_setToolTipsVisible(self.h, visible)

proc aboutToShow*(self: gen_qmenu_types.QMenu, ): void =
  fcQMenu_aboutToShow(self.h)

type QMenuaboutToShowSlot* = proc()
proc miqt_exec_callback_cQMenu_aboutToShow(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMenuaboutToShowSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQMenu_aboutToShow_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMenuaboutToShowSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onaboutToShow*(self: gen_qmenu_types.QMenu, slot: QMenuaboutToShowSlot) =
  var tmp = new QMenuaboutToShowSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_connect_aboutToShow(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMenu_aboutToShow, miqt_exec_callback_cQMenu_aboutToShow_release)

proc aboutToHide*(self: gen_qmenu_types.QMenu, ): void =
  fcQMenu_aboutToHide(self.h)

type QMenuaboutToHideSlot* = proc()
proc miqt_exec_callback_cQMenu_aboutToHide(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMenuaboutToHideSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQMenu_aboutToHide_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMenuaboutToHideSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onaboutToHide*(self: gen_qmenu_types.QMenu, slot: QMenuaboutToHideSlot) =
  var tmp = new QMenuaboutToHideSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_connect_aboutToHide(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMenu_aboutToHide, miqt_exec_callback_cQMenu_aboutToHide_release)

proc triggered*(self: gen_qmenu_types.QMenu, action: gen_qaction_types.QAction): void =
  fcQMenu_triggered(self.h, action.h)

type QMenutriggeredSlot* = proc(action: gen_qaction_types.QAction)
proc miqt_exec_callback_cQMenu_triggered(slot: int, action: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QMenutriggeredSlot](cast[pointer](slot))
  let slotval1 = gen_qaction_types.QAction(h: action)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQMenu_triggered_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMenutriggeredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontriggered*(self: gen_qmenu_types.QMenu, slot: QMenutriggeredSlot) =
  var tmp = new QMenutriggeredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_connect_triggered(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMenu_triggered, miqt_exec_callback_cQMenu_triggered_release)

proc hovered*(self: gen_qmenu_types.QMenu, action: gen_qaction_types.QAction): void =
  fcQMenu_hovered(self.h, action.h)

type QMenuhoveredSlot* = proc(action: gen_qaction_types.QAction)
proc miqt_exec_callback_cQMenu_hovered(slot: int, action: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QMenuhoveredSlot](cast[pointer](slot))
  let slotval1 = gen_qaction_types.QAction(h: action)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQMenu_hovered_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMenuhoveredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onhovered*(self: gen_qmenu_types.QMenu, slot: QMenuhoveredSlot) =
  var tmp = new QMenuhoveredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_connect_hovered(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMenu_hovered, miqt_exec_callback_cQMenu_hovered_release)

proc tr*(_: type gen_qmenu_types.QMenu, s: cstring, c: cstring): string =
  let v_ms = fcQMenu_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmenu_types.QMenu, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMenu_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc popup*(self: gen_qmenu_types.QMenu, pos: gen_qpoint_types.QPoint, at: gen_qaction_types.QAction): void =
  fcQMenu_popup2(self.h, pos.h, at.h)

proc exec*(self: gen_qmenu_types.QMenu, pos: gen_qpoint_types.QPoint, at: gen_qaction_types.QAction): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenu_exec22(self.h, pos.h, at.h))

proc exec*(_: type gen_qmenu_types.QMenu, actions: seq[gen_qaction_types.QAction], pos: gen_qpoint_types.QPoint, at: gen_qaction_types.QAction): gen_qaction_types.QAction =
  var actions_CArray = newSeq[pointer](len(actions))
  for i in 0..<len(actions):
    actions_CArray[i] = actions[i].h

  gen_qaction_types.QAction(h: fcQMenu_exec3(struct_miqt_array(len: csize_t(len(actions)), data: if len(actions) == 0: nil else: addr(actions_CArray[0])), pos.h, at.h))

proc exec*(_: type gen_qmenu_types.QMenu, actions: seq[gen_qaction_types.QAction], pos: gen_qpoint_types.QPoint, at: gen_qaction_types.QAction, parent: gen_qwidget_types.QWidget): gen_qaction_types.QAction =
  var actions_CArray = newSeq[pointer](len(actions))
  for i in 0..<len(actions):
    actions_CArray[i] = actions[i].h

  gen_qaction_types.QAction(h: fcQMenu_exec4(struct_miqt_array(len: csize_t(len(actions)), data: if len(actions) == 0: nil else: addr(actions_CArray[0])), pos.h, at.h, parent.h))

type QMenumetaObjectProc* = proc(self: QMenu): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QMenumetacastProc* = proc(self: QMenu, param1: cstring): pointer {.raises: [], gcsafe.}
type QMenumetacallProc* = proc(self: QMenu, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QMenusizeHintProc* = proc(self: QMenu): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QMenuchangeEventProc* = proc(self: QMenu, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QMenukeyPressEventProc* = proc(self: QMenu, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QMenumouseReleaseEventProc* = proc(self: QMenu, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QMenumousePressEventProc* = proc(self: QMenu, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QMenumouseMoveEventProc* = proc(self: QMenu, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QMenuwheelEventProc* = proc(self: QMenu, param1: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QMenuenterEventProc* = proc(self: QMenu, param1: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QMenuleaveEventProc* = proc(self: QMenu, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QMenuhideEventProc* = proc(self: QMenu, param1: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QMenupaintEventProc* = proc(self: QMenu, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QMenuactionEventProc* = proc(self: QMenu, param1: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QMenutimerEventProc* = proc(self: QMenu, param1: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QMenueventProc* = proc(self: QMenu, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMenufocusNextPrevChildProc* = proc(self: QMenu, next: bool): bool {.raises: [], gcsafe.}
type QMenuinitStyleOptionProc* = proc(self: QMenu, option: gen_qstyleoption_types.QStyleOptionMenuItem, action: gen_qaction_types.QAction): void {.raises: [], gcsafe.}
type QMenudevTypeProc* = proc(self: QMenu): cint {.raises: [], gcsafe.}
type QMenusetVisibleProc* = proc(self: QMenu, visible: bool): void {.raises: [], gcsafe.}
type QMenuminimumSizeHintProc* = proc(self: QMenu): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QMenuheightForWidthProc* = proc(self: QMenu, param1: cint): cint {.raises: [], gcsafe.}
type QMenuhasHeightForWidthProc* = proc(self: QMenu): bool {.raises: [], gcsafe.}
type QMenupaintEngineProc* = proc(self: QMenu): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QMenumouseDoubleClickEventProc* = proc(self: QMenu, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QMenukeyReleaseEventProc* = proc(self: QMenu, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QMenufocusInEventProc* = proc(self: QMenu, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QMenufocusOutEventProc* = proc(self: QMenu, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QMenumoveEventProc* = proc(self: QMenu, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QMenuresizeEventProc* = proc(self: QMenu, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QMenucloseEventProc* = proc(self: QMenu, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QMenucontextMenuEventProc* = proc(self: QMenu, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QMenutabletEventProc* = proc(self: QMenu, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QMenudragEnterEventProc* = proc(self: QMenu, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QMenudragMoveEventProc* = proc(self: QMenu, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QMenudragLeaveEventProc* = proc(self: QMenu, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QMenudropEventProc* = proc(self: QMenu, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QMenushowEventProc* = proc(self: QMenu, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QMenunativeEventProc* = proc(self: QMenu, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QMenumetricProc* = proc(self: QMenu, param1: cint): cint {.raises: [], gcsafe.}
type QMenuinitPainterProc* = proc(self: QMenu, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QMenuredirectedProc* = proc(self: QMenu, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QMenusharedPainterProc* = proc(self: QMenu): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QMenuinputMethodEventProc* = proc(self: QMenu, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QMenuinputMethodQueryProc* = proc(self: QMenu, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QMenueventFilterProc* = proc(self: QMenu, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMenuchildEventProc* = proc(self: QMenu, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QMenucustomEventProc* = proc(self: QMenu, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QMenuconnectNotifyProc* = proc(self: QMenu, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QMenudisconnectNotifyProc* = proc(self: QMenu, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QMenuVTable* = object
  vtbl: cQMenuVTable
  metaObject*: QMenumetaObjectProc
  metacast*: QMenumetacastProc
  metacall*: QMenumetacallProc
  sizeHint*: QMenusizeHintProc
  changeEvent*: QMenuchangeEventProc
  keyPressEvent*: QMenukeyPressEventProc
  mouseReleaseEvent*: QMenumouseReleaseEventProc
  mousePressEvent*: QMenumousePressEventProc
  mouseMoveEvent*: QMenumouseMoveEventProc
  wheelEvent*: QMenuwheelEventProc
  enterEvent*: QMenuenterEventProc
  leaveEvent*: QMenuleaveEventProc
  hideEvent*: QMenuhideEventProc
  paintEvent*: QMenupaintEventProc
  actionEvent*: QMenuactionEventProc
  timerEvent*: QMenutimerEventProc
  event*: QMenueventProc
  focusNextPrevChild*: QMenufocusNextPrevChildProc
  initStyleOption*: QMenuinitStyleOptionProc
  devType*: QMenudevTypeProc
  setVisible*: QMenusetVisibleProc
  minimumSizeHint*: QMenuminimumSizeHintProc
  heightForWidth*: QMenuheightForWidthProc
  hasHeightForWidth*: QMenuhasHeightForWidthProc
  paintEngine*: QMenupaintEngineProc
  mouseDoubleClickEvent*: QMenumouseDoubleClickEventProc
  keyReleaseEvent*: QMenukeyReleaseEventProc
  focusInEvent*: QMenufocusInEventProc
  focusOutEvent*: QMenufocusOutEventProc
  moveEvent*: QMenumoveEventProc
  resizeEvent*: QMenuresizeEventProc
  closeEvent*: QMenucloseEventProc
  contextMenuEvent*: QMenucontextMenuEventProc
  tabletEvent*: QMenutabletEventProc
  dragEnterEvent*: QMenudragEnterEventProc
  dragMoveEvent*: QMenudragMoveEventProc
  dragLeaveEvent*: QMenudragLeaveEventProc
  dropEvent*: QMenudropEventProc
  showEvent*: QMenushowEventProc
  nativeEvent*: QMenunativeEventProc
  metric*: QMenumetricProc
  initPainter*: QMenuinitPainterProc
  redirected*: QMenuredirectedProc
  sharedPainter*: QMenusharedPainterProc
  inputMethodEvent*: QMenuinputMethodEventProc
  inputMethodQuery*: QMenuinputMethodQueryProc
  eventFilter*: QMenueventFilterProc
  childEvent*: QMenuchildEventProc
  customEvent*: QMenucustomEventProc
  connectNotify*: QMenuconnectNotifyProc
  disconnectNotify*: QMenudisconnectNotifyProc
proc QMenumetaObject*(self: gen_qmenu_types.QMenu, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMenu_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQMenu_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QMenumetacast*(self: gen_qmenu_types.QMenu, param1: cstring): pointer =
  fcQMenu_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQMenu_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QMenumetacall*(self: gen_qmenu_types.QMenu, param1: cint, param2: cint, param3: pointer): cint =
  fcQMenu_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQMenu_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QMenusizeHint*(self: gen_qmenu_types.QMenu, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMenu_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQMenu_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QMenuchangeEvent*(self: gen_qmenu_types.QMenu, param1: gen_qcoreevent_types.QEvent): void =
  fcQMenu_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQMenu_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QMenukeyPressEvent*(self: gen_qmenu_types.QMenu, param1: gen_qevent_types.QKeyEvent): void =
  fcQMenu_virtualbase_keyPressEvent(self.h, param1.h)

proc miqt_exec_callback_cQMenu_keyPressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)
  vtbl[].keyPressEvent(self, slotval1)

proc QMenumouseReleaseEvent*(self: gen_qmenu_types.QMenu, param1: gen_qevent_types.QMouseEvent): void =
  fcQMenu_virtualbase_mouseReleaseEvent(self.h, param1.h)

proc miqt_exec_callback_cQMenu_mouseReleaseEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QMenumousePressEvent*(self: gen_qmenu_types.QMenu, param1: gen_qevent_types.QMouseEvent): void =
  fcQMenu_virtualbase_mousePressEvent(self.h, param1.h)

proc miqt_exec_callback_cQMenu_mousePressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mousePressEvent(self, slotval1)

proc QMenumouseMoveEvent*(self: gen_qmenu_types.QMenu, param1: gen_qevent_types.QMouseEvent): void =
  fcQMenu_virtualbase_mouseMoveEvent(self.h, param1.h)

proc miqt_exec_callback_cQMenu_mouseMoveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QMenuwheelEvent*(self: gen_qmenu_types.QMenu, param1: gen_qevent_types.QWheelEvent): void =
  fcQMenu_virtualbase_wheelEvent(self.h, param1.h)

proc miqt_exec_callback_cQMenu_wheelEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)
  vtbl[].wheelEvent(self, slotval1)

proc QMenuenterEvent*(self: gen_qmenu_types.QMenu, param1: gen_qevent_types.QEnterEvent): void =
  fcQMenu_virtualbase_enterEvent(self.h, param1.h)

proc miqt_exec_callback_cQMenu_enterEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: param1)
  vtbl[].enterEvent(self, slotval1)

proc QMenuleaveEvent*(self: gen_qmenu_types.QMenu, param1: gen_qcoreevent_types.QEvent): void =
  fcQMenu_virtualbase_leaveEvent(self.h, param1.h)

proc miqt_exec_callback_cQMenu_leaveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].leaveEvent(self, slotval1)

proc QMenuhideEvent*(self: gen_qmenu_types.QMenu, param1: gen_qevent_types.QHideEvent): void =
  fcQMenu_virtualbase_hideEvent(self.h, param1.h)

proc miqt_exec_callback_cQMenu_hideEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: param1)
  vtbl[].hideEvent(self, slotval1)

proc QMenupaintEvent*(self: gen_qmenu_types.QMenu, param1: gen_qevent_types.QPaintEvent): void =
  fcQMenu_virtualbase_paintEvent(self.h, param1.h)

proc miqt_exec_callback_cQMenu_paintEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)
  vtbl[].paintEvent(self, slotval1)

proc QMenuactionEvent*(self: gen_qmenu_types.QMenu, param1: gen_qevent_types.QActionEvent): void =
  fcQMenu_virtualbase_actionEvent(self.h, param1.h)

proc miqt_exec_callback_cQMenu_actionEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: param1)
  vtbl[].actionEvent(self, slotval1)

proc QMenutimerEvent*(self: gen_qmenu_types.QMenu, param1: gen_qcoreevent_types.QTimerEvent): void =
  fcQMenu_virtualbase_timerEvent(self.h, param1.h)

proc miqt_exec_callback_cQMenu_timerEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1)
  vtbl[].timerEvent(self, slotval1)

proc QMenuevent*(self: gen_qmenu_types.QMenu, param1: gen_qcoreevent_types.QEvent): bool =
  fcQMenu_virtualbase_event(self.h, param1.h)

proc miqt_exec_callback_cQMenu_event(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QMenufocusNextPrevChild*(self: gen_qmenu_types.QMenu, next: bool): bool =
  fcQMenu_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQMenu_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QMenuinitStyleOption*(self: gen_qmenu_types.QMenu, option: gen_qstyleoption_types.QStyleOptionMenuItem, action: gen_qaction_types.QAction): void =
  fcQMenu_virtualbase_initStyleOption(self.h, option.h, action.h)

proc miqt_exec_callback_cQMenu_initStyleOption(vtbl: pointer, self: pointer, option: pointer, action: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionMenuItem(h: option)
  let slotval2 = gen_qaction_types.QAction(h: action)
  vtbl[].initStyleOption(self, slotval1, slotval2)

proc QMenudevType*(self: gen_qmenu_types.QMenu, ): cint =
  fcQMenu_virtualbase_devType(self.h)

proc miqt_exec_callback_cQMenu_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QMenusetVisible*(self: gen_qmenu_types.QMenu, visible: bool): void =
  fcQMenu_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQMenu_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QMenuminimumSizeHint*(self: gen_qmenu_types.QMenu, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMenu_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQMenu_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QMenuheightForWidth*(self: gen_qmenu_types.QMenu, param1: cint): cint =
  fcQMenu_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQMenu_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QMenuhasHeightForWidth*(self: gen_qmenu_types.QMenu, ): bool =
  fcQMenu_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQMenu_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QMenupaintEngine*(self: gen_qmenu_types.QMenu, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQMenu_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQMenu_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QMenumouseDoubleClickEvent*(self: gen_qmenu_types.QMenu, event: gen_qevent_types.QMouseEvent): void =
  fcQMenu_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQMenu_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QMenukeyReleaseEvent*(self: gen_qmenu_types.QMenu, event: gen_qevent_types.QKeyEvent): void =
  fcQMenu_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQMenu_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QMenufocusInEvent*(self: gen_qmenu_types.QMenu, event: gen_qevent_types.QFocusEvent): void =
  fcQMenu_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQMenu_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QMenufocusOutEvent*(self: gen_qmenu_types.QMenu, event: gen_qevent_types.QFocusEvent): void =
  fcQMenu_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQMenu_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QMenumoveEvent*(self: gen_qmenu_types.QMenu, event: gen_qevent_types.QMoveEvent): void =
  fcQMenu_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQMenu_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QMenuresizeEvent*(self: gen_qmenu_types.QMenu, event: gen_qevent_types.QResizeEvent): void =
  fcQMenu_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQMenu_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QMenucloseEvent*(self: gen_qmenu_types.QMenu, event: gen_qevent_types.QCloseEvent): void =
  fcQMenu_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQMenu_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QMenucontextMenuEvent*(self: gen_qmenu_types.QMenu, event: gen_qevent_types.QContextMenuEvent): void =
  fcQMenu_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQMenu_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QMenutabletEvent*(self: gen_qmenu_types.QMenu, event: gen_qevent_types.QTabletEvent): void =
  fcQMenu_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQMenu_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QMenudragEnterEvent*(self: gen_qmenu_types.QMenu, event: gen_qevent_types.QDragEnterEvent): void =
  fcQMenu_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQMenu_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QMenudragMoveEvent*(self: gen_qmenu_types.QMenu, event: gen_qevent_types.QDragMoveEvent): void =
  fcQMenu_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQMenu_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QMenudragLeaveEvent*(self: gen_qmenu_types.QMenu, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQMenu_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQMenu_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QMenudropEvent*(self: gen_qmenu_types.QMenu, event: gen_qevent_types.QDropEvent): void =
  fcQMenu_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQMenu_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QMenushowEvent*(self: gen_qmenu_types.QMenu, event: gen_qevent_types.QShowEvent): void =
  fcQMenu_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQMenu_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QMenunativeEvent*(self: gen_qmenu_types.QMenu, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQMenu_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQMenu_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QMenumetric*(self: gen_qmenu_types.QMenu, param1: cint): cint =
  fcQMenu_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQMenu_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QMenuinitPainter*(self: gen_qmenu_types.QMenu, painter: gen_qpainter_types.QPainter): void =
  fcQMenu_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQMenu_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QMenuredirected*(self: gen_qmenu_types.QMenu, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQMenu_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQMenu_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QMenusharedPainter*(self: gen_qmenu_types.QMenu, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQMenu_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQMenu_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QMenuinputMethodEvent*(self: gen_qmenu_types.QMenu, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQMenu_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQMenu_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QMenuinputMethodQuery*(self: gen_qmenu_types.QMenu, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQMenu_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQMenu_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QMenueventFilter*(self: gen_qmenu_types.QMenu, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQMenu_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQMenu_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QMenuchildEvent*(self: gen_qmenu_types.QMenu, event: gen_qcoreevent_types.QChildEvent): void =
  fcQMenu_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQMenu_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QMenucustomEvent*(self: gen_qmenu_types.QMenu, event: gen_qcoreevent_types.QEvent): void =
  fcQMenu_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQMenu_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QMenuconnectNotify*(self: gen_qmenu_types.QMenu, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMenu_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQMenu_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QMenudisconnectNotify*(self: gen_qmenu_types.QMenu, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMenu_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQMenu_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuVTable](vtbl)
  let self = QMenu(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc columnCount*(self: gen_qmenu_types.QMenu, ): cint =
  fcQMenu_protectedbase_columnCount(self.h)

proc updateMicroFocus*(self: gen_qmenu_types.QMenu, ): void =
  fcQMenu_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qmenu_types.QMenu, ): void =
  fcQMenu_protectedbase_create(self.h)

proc destroy*(self: gen_qmenu_types.QMenu, ): void =
  fcQMenu_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qmenu_types.QMenu, ): bool =
  fcQMenu_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qmenu_types.QMenu, ): bool =
  fcQMenu_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qmenu_types.QMenu, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMenu_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qmenu_types.QMenu, ): cint =
  fcQMenu_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qmenu_types.QMenu, signal: cstring): cint =
  fcQMenu_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qmenu_types.QMenu, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMenu_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qmenu_types.QMenu,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QMenuVTable = nil): gen_qmenu_types.QMenu =
  let vtbl = if vtbl == nil: new QMenuVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQMenuVTable, _: ptr cQMenu) {.cdecl.} =
    let vtbl = cast[ref QMenuVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQMenu_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQMenu_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQMenu_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQMenu_sizeHint
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQMenu_changeEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQMenu_keyPressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQMenu_mouseReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQMenu_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQMenu_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQMenu_wheelEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQMenu_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQMenu_leaveEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQMenu_hideEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQMenu_paintEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQMenu_actionEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQMenu_timerEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQMenu_event
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQMenu_focusNextPrevChild
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQMenu_initStyleOption
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQMenu_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQMenu_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQMenu_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQMenu_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQMenu_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQMenu_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQMenu_mouseDoubleClickEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQMenu_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQMenu_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQMenu_focusOutEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQMenu_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQMenu_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQMenu_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQMenu_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQMenu_tabletEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQMenu_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQMenu_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQMenu_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQMenu_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQMenu_showEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQMenu_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQMenu_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQMenu_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQMenu_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQMenu_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQMenu_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQMenu_inputMethodQuery
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQMenu_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQMenu_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQMenu_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQMenu_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQMenu_disconnectNotify
  gen_qmenu_types.QMenu(h: fcQMenu_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qmenu_types.QMenu,
    vtbl: ref QMenuVTable = nil): gen_qmenu_types.QMenu =
  let vtbl = if vtbl == nil: new QMenuVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQMenuVTable, _: ptr cQMenu) {.cdecl.} =
    let vtbl = cast[ref QMenuVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQMenu_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQMenu_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQMenu_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQMenu_sizeHint
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQMenu_changeEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQMenu_keyPressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQMenu_mouseReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQMenu_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQMenu_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQMenu_wheelEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQMenu_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQMenu_leaveEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQMenu_hideEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQMenu_paintEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQMenu_actionEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQMenu_timerEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQMenu_event
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQMenu_focusNextPrevChild
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQMenu_initStyleOption
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQMenu_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQMenu_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQMenu_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQMenu_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQMenu_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQMenu_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQMenu_mouseDoubleClickEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQMenu_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQMenu_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQMenu_focusOutEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQMenu_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQMenu_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQMenu_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQMenu_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQMenu_tabletEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQMenu_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQMenu_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQMenu_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQMenu_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQMenu_showEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQMenu_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQMenu_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQMenu_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQMenu_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQMenu_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQMenu_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQMenu_inputMethodQuery
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQMenu_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQMenu_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQMenu_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQMenu_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQMenu_disconnectNotify
  gen_qmenu_types.QMenu(h: fcQMenu_new2(addr(vtbl[]), ))

proc create*(T: type gen_qmenu_types.QMenu,
    title: string,
    vtbl: ref QMenuVTable = nil): gen_qmenu_types.QMenu =
  let vtbl = if vtbl == nil: new QMenuVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQMenuVTable, _: ptr cQMenu) {.cdecl.} =
    let vtbl = cast[ref QMenuVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQMenu_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQMenu_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQMenu_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQMenu_sizeHint
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQMenu_changeEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQMenu_keyPressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQMenu_mouseReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQMenu_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQMenu_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQMenu_wheelEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQMenu_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQMenu_leaveEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQMenu_hideEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQMenu_paintEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQMenu_actionEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQMenu_timerEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQMenu_event
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQMenu_focusNextPrevChild
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQMenu_initStyleOption
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQMenu_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQMenu_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQMenu_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQMenu_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQMenu_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQMenu_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQMenu_mouseDoubleClickEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQMenu_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQMenu_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQMenu_focusOutEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQMenu_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQMenu_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQMenu_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQMenu_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQMenu_tabletEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQMenu_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQMenu_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQMenu_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQMenu_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQMenu_showEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQMenu_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQMenu_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQMenu_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQMenu_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQMenu_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQMenu_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQMenu_inputMethodQuery
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQMenu_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQMenu_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQMenu_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQMenu_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQMenu_disconnectNotify
  gen_qmenu_types.QMenu(h: fcQMenu_new3(addr(vtbl[]), struct_miqt_string(data: title, len: csize_t(len(title)))))

proc create*(T: type gen_qmenu_types.QMenu,
    title: string, parent: gen_qwidget_types.QWidget,
    vtbl: ref QMenuVTable = nil): gen_qmenu_types.QMenu =
  let vtbl = if vtbl == nil: new QMenuVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQMenuVTable, _: ptr cQMenu) {.cdecl.} =
    let vtbl = cast[ref QMenuVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQMenu_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQMenu_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQMenu_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQMenu_sizeHint
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQMenu_changeEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQMenu_keyPressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQMenu_mouseReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQMenu_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQMenu_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQMenu_wheelEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQMenu_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQMenu_leaveEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQMenu_hideEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQMenu_paintEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQMenu_actionEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQMenu_timerEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQMenu_event
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQMenu_focusNextPrevChild
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQMenu_initStyleOption
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQMenu_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQMenu_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQMenu_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQMenu_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQMenu_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQMenu_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQMenu_mouseDoubleClickEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQMenu_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQMenu_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQMenu_focusOutEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQMenu_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQMenu_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQMenu_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQMenu_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQMenu_tabletEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQMenu_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQMenu_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQMenu_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQMenu_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQMenu_showEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQMenu_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQMenu_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQMenu_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQMenu_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQMenu_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQMenu_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQMenu_inputMethodQuery
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQMenu_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQMenu_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQMenu_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQMenu_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQMenu_disconnectNotify
  gen_qmenu_types.QMenu(h: fcQMenu_new4(addr(vtbl[]), struct_miqt_string(data: title, len: csize_t(len(title))), parent.h))

proc staticMetaObject*(_: type gen_qmenu_types.QMenu): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMenu_staticMetaObject())
proc delete*(self: gen_qmenu_types.QMenu) =
  fcQMenu_delete(self.h)
