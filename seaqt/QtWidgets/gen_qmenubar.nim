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
{.compile("gen_qmenubar.cpp", cflags).}


import ./gen_qmenubar_types
export gen_qmenubar_types

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
  ./gen_qmenu_types,
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
  gen_qmenu_types,
  gen_qstyleoption_types,
  gen_qwidget

type cQMenuBar*{.exportc: "QMenuBar", incompleteStruct.} = object

proc fcQMenuBar_metaObject(self: pointer, ): pointer {.importc: "QMenuBar_metaObject".}
proc fcQMenuBar_metacast(self: pointer, param1: cstring): pointer {.importc: "QMenuBar_metacast".}
proc fcQMenuBar_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMenuBar_metacall".}
proc fcQMenuBar_tr(s: cstring): struct_miqt_string {.importc: "QMenuBar_tr".}
proc fcQMenuBar_trUtf8(s: cstring): struct_miqt_string {.importc: "QMenuBar_trUtf8".}
proc fcQMenuBar_addAction(self: pointer, text: struct_miqt_string): pointer {.importc: "QMenuBar_addAction".}
proc fcQMenuBar_addMenu(self: pointer, menu: pointer): pointer {.importc: "QMenuBar_addMenu".}
proc fcQMenuBar_addMenuWithTitle(self: pointer, title: struct_miqt_string): pointer {.importc: "QMenuBar_addMenuWithTitle".}
proc fcQMenuBar_addMenu2(self: pointer, icon: pointer, title: struct_miqt_string): pointer {.importc: "QMenuBar_addMenu2".}
proc fcQMenuBar_addSeparator(self: pointer, ): pointer {.importc: "QMenuBar_addSeparator".}
proc fcQMenuBar_insertSeparator(self: pointer, before: pointer): pointer {.importc: "QMenuBar_insertSeparator".}
proc fcQMenuBar_insertMenu(self: pointer, before: pointer, menu: pointer): pointer {.importc: "QMenuBar_insertMenu".}
proc fcQMenuBar_clear(self: pointer, ): void {.importc: "QMenuBar_clear".}
proc fcQMenuBar_activeAction(self: pointer, ): pointer {.importc: "QMenuBar_activeAction".}
proc fcQMenuBar_setActiveAction(self: pointer, action: pointer): void {.importc: "QMenuBar_setActiveAction".}
proc fcQMenuBar_setDefaultUp(self: pointer, defaultUp: bool): void {.importc: "QMenuBar_setDefaultUp".}
proc fcQMenuBar_isDefaultUp(self: pointer, ): bool {.importc: "QMenuBar_isDefaultUp".}
proc fcQMenuBar_sizeHint(self: pointer, ): pointer {.importc: "QMenuBar_sizeHint".}
proc fcQMenuBar_minimumSizeHint(self: pointer, ): pointer {.importc: "QMenuBar_minimumSizeHint".}
proc fcQMenuBar_heightForWidth(self: pointer, param1: cint): cint {.importc: "QMenuBar_heightForWidth".}
proc fcQMenuBar_actionGeometry(self: pointer, param1: pointer): pointer {.importc: "QMenuBar_actionGeometry".}
proc fcQMenuBar_actionAt(self: pointer, param1: pointer): pointer {.importc: "QMenuBar_actionAt".}
proc fcQMenuBar_setCornerWidget(self: pointer, w: pointer): void {.importc: "QMenuBar_setCornerWidget".}
proc fcQMenuBar_cornerWidget(self: pointer, ): pointer {.importc: "QMenuBar_cornerWidget".}
proc fcQMenuBar_isNativeMenuBar(self: pointer, ): bool {.importc: "QMenuBar_isNativeMenuBar".}
proc fcQMenuBar_setNativeMenuBar(self: pointer, nativeMenuBar: bool): void {.importc: "QMenuBar_setNativeMenuBar".}
proc fcQMenuBar_setVisible(self: pointer, visible: bool): void {.importc: "QMenuBar_setVisible".}
proc fcQMenuBar_triggered(self: pointer, action: pointer): void {.importc: "QMenuBar_triggered".}
proc fcQMenuBar_connect_triggered(self: pointer, slot: int, callback: proc (slot: int, action: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMenuBar_connect_triggered".}
proc fcQMenuBar_hovered(self: pointer, action: pointer): void {.importc: "QMenuBar_hovered".}
proc fcQMenuBar_connect_hovered(self: pointer, slot: int, callback: proc (slot: int, action: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMenuBar_connect_hovered".}
proc fcQMenuBar_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMenuBar_tr2".}
proc fcQMenuBar_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMenuBar_tr3".}
proc fcQMenuBar_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMenuBar_trUtf82".}
proc fcQMenuBar_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMenuBar_trUtf83".}
proc fcQMenuBar_setCornerWidget2(self: pointer, w: pointer, corner: cint): void {.importc: "QMenuBar_setCornerWidget2".}
proc fcQMenuBar_cornerWidget1(self: pointer, corner: cint): pointer {.importc: "QMenuBar_cornerWidget1".}
type cQMenuBarVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQMenuBarVTable, self: ptr cQMenuBar) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQMenuBar_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QMenuBar_virtualbase_metaObject".}
proc fcQMenuBar_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QMenuBar_virtualbase_metacast".}
proc fcQMenuBar_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMenuBar_virtualbase_metacall".}
proc fcQMenuBar_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QMenuBar_virtualbase_sizeHint".}
proc fcQMenuBar_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QMenuBar_virtualbase_minimumSizeHint".}
proc fcQMenuBar_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QMenuBar_virtualbase_heightForWidth".}
proc fcQMenuBar_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QMenuBar_virtualbase_setVisible".}
proc fcQMenuBar_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QMenuBar_virtualbase_changeEvent".}
proc fcQMenuBar_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QMenuBar_virtualbase_keyPressEvent".}
proc fcQMenuBar_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void {.importc: "QMenuBar_virtualbase_mouseReleaseEvent".}
proc fcQMenuBar_virtualbase_mousePressEvent(self: pointer, param1: pointer): void {.importc: "QMenuBar_virtualbase_mousePressEvent".}
proc fcQMenuBar_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void {.importc: "QMenuBar_virtualbase_mouseMoveEvent".}
proc fcQMenuBar_virtualbase_leaveEvent(self: pointer, param1: pointer): void {.importc: "QMenuBar_virtualbase_leaveEvent".}
proc fcQMenuBar_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QMenuBar_virtualbase_paintEvent".}
proc fcQMenuBar_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QMenuBar_virtualbase_resizeEvent".}
proc fcQMenuBar_virtualbase_actionEvent(self: pointer, param1: pointer): void {.importc: "QMenuBar_virtualbase_actionEvent".}
proc fcQMenuBar_virtualbase_focusOutEvent(self: pointer, param1: pointer): void {.importc: "QMenuBar_virtualbase_focusOutEvent".}
proc fcQMenuBar_virtualbase_focusInEvent(self: pointer, param1: pointer): void {.importc: "QMenuBar_virtualbase_focusInEvent".}
proc fcQMenuBar_virtualbase_timerEvent(self: pointer, param1: pointer): void {.importc: "QMenuBar_virtualbase_timerEvent".}
proc fcQMenuBar_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QMenuBar_virtualbase_eventFilter".}
proc fcQMenuBar_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QMenuBar_virtualbase_event".}
proc fcQMenuBar_virtualbase_devType(self: pointer, ): cint {.importc: "QMenuBar_virtualbase_devType".}
proc fcQMenuBar_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QMenuBar_virtualbase_hasHeightForWidth".}
proc fcQMenuBar_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QMenuBar_virtualbase_paintEngine".}
proc fcQMenuBar_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QMenuBar_virtualbase_mouseDoubleClickEvent".}
proc fcQMenuBar_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QMenuBar_virtualbase_wheelEvent".}
proc fcQMenuBar_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QMenuBar_virtualbase_keyReleaseEvent".}
proc fcQMenuBar_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QMenuBar_virtualbase_enterEvent".}
proc fcQMenuBar_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QMenuBar_virtualbase_moveEvent".}
proc fcQMenuBar_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QMenuBar_virtualbase_closeEvent".}
proc fcQMenuBar_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QMenuBar_virtualbase_contextMenuEvent".}
proc fcQMenuBar_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QMenuBar_virtualbase_tabletEvent".}
proc fcQMenuBar_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QMenuBar_virtualbase_dragEnterEvent".}
proc fcQMenuBar_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QMenuBar_virtualbase_dragMoveEvent".}
proc fcQMenuBar_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QMenuBar_virtualbase_dragLeaveEvent".}
proc fcQMenuBar_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QMenuBar_virtualbase_dropEvent".}
proc fcQMenuBar_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QMenuBar_virtualbase_showEvent".}
proc fcQMenuBar_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QMenuBar_virtualbase_hideEvent".}
proc fcQMenuBar_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QMenuBar_virtualbase_nativeEvent".}
proc fcQMenuBar_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QMenuBar_virtualbase_metric".}
proc fcQMenuBar_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QMenuBar_virtualbase_initPainter".}
proc fcQMenuBar_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QMenuBar_virtualbase_redirected".}
proc fcQMenuBar_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QMenuBar_virtualbase_sharedPainter".}
proc fcQMenuBar_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QMenuBar_virtualbase_inputMethodEvent".}
proc fcQMenuBar_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QMenuBar_virtualbase_inputMethodQuery".}
proc fcQMenuBar_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QMenuBar_virtualbase_focusNextPrevChild".}
proc fcQMenuBar_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QMenuBar_virtualbase_childEvent".}
proc fcQMenuBar_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QMenuBar_virtualbase_customEvent".}
proc fcQMenuBar_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QMenuBar_virtualbase_connectNotify".}
proc fcQMenuBar_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QMenuBar_virtualbase_disconnectNotify".}
proc fcQMenuBar_protectedbase_initStyleOption(self: pointer, option: pointer, action: pointer): void {.importc: "QMenuBar_protectedbase_initStyleOption".}
proc fcQMenuBar_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QMenuBar_protectedbase_updateMicroFocus".}
proc fcQMenuBar_protectedbase_create(self: pointer, ): void {.importc: "QMenuBar_protectedbase_create".}
proc fcQMenuBar_protectedbase_destroy(self: pointer, ): void {.importc: "QMenuBar_protectedbase_destroy".}
proc fcQMenuBar_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QMenuBar_protectedbase_focusNextChild".}
proc fcQMenuBar_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QMenuBar_protectedbase_focusPreviousChild".}
proc fcQMenuBar_protectedbase_sender(self: pointer, ): pointer {.importc: "QMenuBar_protectedbase_sender".}
proc fcQMenuBar_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QMenuBar_protectedbase_senderSignalIndex".}
proc fcQMenuBar_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QMenuBar_protectedbase_receivers".}
proc fcQMenuBar_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QMenuBar_protectedbase_isSignalConnected".}
proc fcQMenuBar_new(vtbl: pointer, parent: pointer): ptr cQMenuBar {.importc: "QMenuBar_new".}
proc fcQMenuBar_new2(vtbl: pointer, ): ptr cQMenuBar {.importc: "QMenuBar_new2".}
proc fcQMenuBar_staticMetaObject(): pointer {.importc: "QMenuBar_staticMetaObject".}

proc metaObject*(self: gen_qmenubar_types.QMenuBar, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMenuBar_metaObject(self.h), owned: false)

proc metacast*(self: gen_qmenubar_types.QMenuBar, param1: cstring): pointer =
  fcQMenuBar_metacast(self.h, param1)

proc metacall*(self: gen_qmenubar_types.QMenuBar, param1: cint, param2: cint, param3: pointer): cint =
  fcQMenuBar_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmenubar_types.QMenuBar, s: cstring): string =
  let v_ms = fcQMenuBar_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmenubar_types.QMenuBar, s: cstring): string =
  let v_ms = fcQMenuBar_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addAction*(self: gen_qmenubar_types.QMenuBar, text: string): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenuBar_addAction(self.h, struct_miqt_string(data: text, len: csize_t(len(text)))), owned: false)

proc addMenu*(self: gen_qmenubar_types.QMenuBar, menu: gen_qmenu_types.QMenu): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenuBar_addMenu(self.h, menu.h), owned: false)

proc addMenu*(self: gen_qmenubar_types.QMenuBar, title: string): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fcQMenuBar_addMenuWithTitle(self.h, struct_miqt_string(data: title, len: csize_t(len(title)))), owned: false)

proc addMenu*(self: gen_qmenubar_types.QMenuBar, icon: gen_qicon_types.QIcon, title: string): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fcQMenuBar_addMenu2(self.h, icon.h, struct_miqt_string(data: title, len: csize_t(len(title)))), owned: false)

proc addSeparator*(self: gen_qmenubar_types.QMenuBar, ): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenuBar_addSeparator(self.h), owned: false)

proc insertSeparator*(self: gen_qmenubar_types.QMenuBar, before: gen_qaction_types.QAction): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenuBar_insertSeparator(self.h, before.h), owned: false)

proc insertMenu*(self: gen_qmenubar_types.QMenuBar, before: gen_qaction_types.QAction, menu: gen_qmenu_types.QMenu): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenuBar_insertMenu(self.h, before.h, menu.h), owned: false)

proc clear*(self: gen_qmenubar_types.QMenuBar, ): void =
  fcQMenuBar_clear(self.h)

proc activeAction*(self: gen_qmenubar_types.QMenuBar, ): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenuBar_activeAction(self.h), owned: false)

proc setActiveAction*(self: gen_qmenubar_types.QMenuBar, action: gen_qaction_types.QAction): void =
  fcQMenuBar_setActiveAction(self.h, action.h)

proc setDefaultUp*(self: gen_qmenubar_types.QMenuBar, defaultUp: bool): void =
  fcQMenuBar_setDefaultUp(self.h, defaultUp)

proc isDefaultUp*(self: gen_qmenubar_types.QMenuBar, ): bool =
  fcQMenuBar_isDefaultUp(self.h)

proc sizeHint*(self: gen_qmenubar_types.QMenuBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMenuBar_sizeHint(self.h), owned: true)

proc minimumSizeHint*(self: gen_qmenubar_types.QMenuBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMenuBar_minimumSizeHint(self.h), owned: true)

proc heightForWidth*(self: gen_qmenubar_types.QMenuBar, param1: cint): cint =
  fcQMenuBar_heightForWidth(self.h, param1)

proc actionGeometry*(self: gen_qmenubar_types.QMenuBar, param1: gen_qaction_types.QAction): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQMenuBar_actionGeometry(self.h, param1.h), owned: true)

proc actionAt*(self: gen_qmenubar_types.QMenuBar, param1: gen_qpoint_types.QPoint): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenuBar_actionAt(self.h, param1.h), owned: false)

proc setCornerWidget*(self: gen_qmenubar_types.QMenuBar, w: gen_qwidget_types.QWidget): void =
  fcQMenuBar_setCornerWidget(self.h, w.h)

proc cornerWidget*(self: gen_qmenubar_types.QMenuBar, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQMenuBar_cornerWidget(self.h), owned: false)

proc isNativeMenuBar*(self: gen_qmenubar_types.QMenuBar, ): bool =
  fcQMenuBar_isNativeMenuBar(self.h)

proc setNativeMenuBar*(self: gen_qmenubar_types.QMenuBar, nativeMenuBar: bool): void =
  fcQMenuBar_setNativeMenuBar(self.h, nativeMenuBar)

proc setVisible*(self: gen_qmenubar_types.QMenuBar, visible: bool): void =
  fcQMenuBar_setVisible(self.h, visible)

proc triggered*(self: gen_qmenubar_types.QMenuBar, action: gen_qaction_types.QAction): void =
  fcQMenuBar_triggered(self.h, action.h)

type QMenuBartriggeredSlot* = proc(action: gen_qaction_types.QAction)
proc miqt_exec_callback_cQMenuBar_triggered(slot: int, action: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QMenuBartriggeredSlot](cast[pointer](slot))
  let slotval1 = gen_qaction_types.QAction(h: action, owned: false)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQMenuBar_triggered_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMenuBartriggeredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontriggered*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBartriggeredSlot) =
  var tmp = new QMenuBartriggeredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_connect_triggered(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMenuBar_triggered, miqt_exec_callback_cQMenuBar_triggered_release)

proc hovered*(self: gen_qmenubar_types.QMenuBar, action: gen_qaction_types.QAction): void =
  fcQMenuBar_hovered(self.h, action.h)

type QMenuBarhoveredSlot* = proc(action: gen_qaction_types.QAction)
proc miqt_exec_callback_cQMenuBar_hovered(slot: int, action: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QMenuBarhoveredSlot](cast[pointer](slot))
  let slotval1 = gen_qaction_types.QAction(h: action, owned: false)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQMenuBar_hovered_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMenuBarhoveredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onhovered*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarhoveredSlot) =
  var tmp = new QMenuBarhoveredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_connect_hovered(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMenuBar_hovered, miqt_exec_callback_cQMenuBar_hovered_release)

proc tr*(_: type gen_qmenubar_types.QMenuBar, s: cstring, c: cstring): string =
  let v_ms = fcQMenuBar_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmenubar_types.QMenuBar, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMenuBar_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmenubar_types.QMenuBar, s: cstring, c: cstring): string =
  let v_ms = fcQMenuBar_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmenubar_types.QMenuBar, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMenuBar_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCornerWidget*(self: gen_qmenubar_types.QMenuBar, w: gen_qwidget_types.QWidget, corner: cint): void =
  fcQMenuBar_setCornerWidget2(self.h, w.h, cint(corner))

proc cornerWidget*(self: gen_qmenubar_types.QMenuBar, corner: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQMenuBar_cornerWidget1(self.h, cint(corner)), owned: false)

type QMenuBarmetaObjectProc* = proc(self: QMenuBar): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QMenuBarmetacastProc* = proc(self: QMenuBar, param1: cstring): pointer {.raises: [], gcsafe.}
type QMenuBarmetacallProc* = proc(self: QMenuBar, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QMenuBarsizeHintProc* = proc(self: QMenuBar): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QMenuBarminimumSizeHintProc* = proc(self: QMenuBar): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QMenuBarheightForWidthProc* = proc(self: QMenuBar, param1: cint): cint {.raises: [], gcsafe.}
type QMenuBarsetVisibleProc* = proc(self: QMenuBar, visible: bool): void {.raises: [], gcsafe.}
type QMenuBarchangeEventProc* = proc(self: QMenuBar, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QMenuBarkeyPressEventProc* = proc(self: QMenuBar, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QMenuBarmouseReleaseEventProc* = proc(self: QMenuBar, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QMenuBarmousePressEventProc* = proc(self: QMenuBar, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QMenuBarmouseMoveEventProc* = proc(self: QMenuBar, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QMenuBarleaveEventProc* = proc(self: QMenuBar, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QMenuBarpaintEventProc* = proc(self: QMenuBar, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QMenuBarresizeEventProc* = proc(self: QMenuBar, param1: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QMenuBaractionEventProc* = proc(self: QMenuBar, param1: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QMenuBarfocusOutEventProc* = proc(self: QMenuBar, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QMenuBarfocusInEventProc* = proc(self: QMenuBar, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QMenuBartimerEventProc* = proc(self: QMenuBar, param1: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QMenuBareventFilterProc* = proc(self: QMenuBar, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMenuBareventProc* = proc(self: QMenuBar, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMenuBardevTypeProc* = proc(self: QMenuBar): cint {.raises: [], gcsafe.}
type QMenuBarhasHeightForWidthProc* = proc(self: QMenuBar): bool {.raises: [], gcsafe.}
type QMenuBarpaintEngineProc* = proc(self: QMenuBar): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QMenuBarmouseDoubleClickEventProc* = proc(self: QMenuBar, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QMenuBarwheelEventProc* = proc(self: QMenuBar, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QMenuBarkeyReleaseEventProc* = proc(self: QMenuBar, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QMenuBarenterEventProc* = proc(self: QMenuBar, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QMenuBarmoveEventProc* = proc(self: QMenuBar, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QMenuBarcloseEventProc* = proc(self: QMenuBar, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QMenuBarcontextMenuEventProc* = proc(self: QMenuBar, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QMenuBartabletEventProc* = proc(self: QMenuBar, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QMenuBardragEnterEventProc* = proc(self: QMenuBar, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QMenuBardragMoveEventProc* = proc(self: QMenuBar, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QMenuBardragLeaveEventProc* = proc(self: QMenuBar, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QMenuBardropEventProc* = proc(self: QMenuBar, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QMenuBarshowEventProc* = proc(self: QMenuBar, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QMenuBarhideEventProc* = proc(self: QMenuBar, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QMenuBarnativeEventProc* = proc(self: QMenuBar, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QMenuBarmetricProc* = proc(self: QMenuBar, param1: cint): cint {.raises: [], gcsafe.}
type QMenuBarinitPainterProc* = proc(self: QMenuBar, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QMenuBarredirectedProc* = proc(self: QMenuBar, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QMenuBarsharedPainterProc* = proc(self: QMenuBar): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QMenuBarinputMethodEventProc* = proc(self: QMenuBar, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QMenuBarinputMethodQueryProc* = proc(self: QMenuBar, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QMenuBarfocusNextPrevChildProc* = proc(self: QMenuBar, next: bool): bool {.raises: [], gcsafe.}
type QMenuBarchildEventProc* = proc(self: QMenuBar, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QMenuBarcustomEventProc* = proc(self: QMenuBar, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QMenuBarconnectNotifyProc* = proc(self: QMenuBar, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QMenuBardisconnectNotifyProc* = proc(self: QMenuBar, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QMenuBarVTable* {.inheritable, pure.} = object
  vtbl: cQMenuBarVTable
  metaObject*: QMenuBarmetaObjectProc
  metacast*: QMenuBarmetacastProc
  metacall*: QMenuBarmetacallProc
  sizeHint*: QMenuBarsizeHintProc
  minimumSizeHint*: QMenuBarminimumSizeHintProc
  heightForWidth*: QMenuBarheightForWidthProc
  setVisible*: QMenuBarsetVisibleProc
  changeEvent*: QMenuBarchangeEventProc
  keyPressEvent*: QMenuBarkeyPressEventProc
  mouseReleaseEvent*: QMenuBarmouseReleaseEventProc
  mousePressEvent*: QMenuBarmousePressEventProc
  mouseMoveEvent*: QMenuBarmouseMoveEventProc
  leaveEvent*: QMenuBarleaveEventProc
  paintEvent*: QMenuBarpaintEventProc
  resizeEvent*: QMenuBarresizeEventProc
  actionEvent*: QMenuBaractionEventProc
  focusOutEvent*: QMenuBarfocusOutEventProc
  focusInEvent*: QMenuBarfocusInEventProc
  timerEvent*: QMenuBartimerEventProc
  eventFilter*: QMenuBareventFilterProc
  event*: QMenuBareventProc
  devType*: QMenuBardevTypeProc
  hasHeightForWidth*: QMenuBarhasHeightForWidthProc
  paintEngine*: QMenuBarpaintEngineProc
  mouseDoubleClickEvent*: QMenuBarmouseDoubleClickEventProc
  wheelEvent*: QMenuBarwheelEventProc
  keyReleaseEvent*: QMenuBarkeyReleaseEventProc
  enterEvent*: QMenuBarenterEventProc
  moveEvent*: QMenuBarmoveEventProc
  closeEvent*: QMenuBarcloseEventProc
  contextMenuEvent*: QMenuBarcontextMenuEventProc
  tabletEvent*: QMenuBartabletEventProc
  dragEnterEvent*: QMenuBardragEnterEventProc
  dragMoveEvent*: QMenuBardragMoveEventProc
  dragLeaveEvent*: QMenuBardragLeaveEventProc
  dropEvent*: QMenuBardropEventProc
  showEvent*: QMenuBarshowEventProc
  hideEvent*: QMenuBarhideEventProc
  nativeEvent*: QMenuBarnativeEventProc
  metric*: QMenuBarmetricProc
  initPainter*: QMenuBarinitPainterProc
  redirected*: QMenuBarredirectedProc
  sharedPainter*: QMenuBarsharedPainterProc
  inputMethodEvent*: QMenuBarinputMethodEventProc
  inputMethodQuery*: QMenuBarinputMethodQueryProc
  focusNextPrevChild*: QMenuBarfocusNextPrevChildProc
  childEvent*: QMenuBarchildEventProc
  customEvent*: QMenuBarcustomEventProc
  connectNotify*: QMenuBarconnectNotifyProc
  disconnectNotify*: QMenuBardisconnectNotifyProc
proc QMenuBarmetaObject*(self: gen_qmenubar_types.QMenuBar, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMenuBar_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQMenuBar_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMenuBarmetacast*(self: gen_qmenubar_types.QMenuBar, param1: cstring): pointer =
  fcQMenuBar_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQMenuBar_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QMenuBarmetacall*(self: gen_qmenubar_types.QMenuBar, param1: cint, param2: cint, param3: pointer): cint =
  fcQMenuBar_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQMenuBar_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QMenuBarsizeHint*(self: gen_qmenubar_types.QMenuBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMenuBar_virtualbase_sizeHint(self.h), owned: true)

proc miqt_exec_callback_cQMenuBar_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMenuBarminimumSizeHint*(self: gen_qmenubar_types.QMenuBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMenuBar_virtualbase_minimumSizeHint(self.h), owned: true)

proc miqt_exec_callback_cQMenuBar_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMenuBarheightForWidth*(self: gen_qmenubar_types.QMenuBar, param1: cint): cint =
  fcQMenuBar_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQMenuBar_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QMenuBarsetVisible*(self: gen_qmenubar_types.QMenuBar, visible: bool): void =
  fcQMenuBar_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQMenuBar_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QMenuBarchangeEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qcoreevent_types.QEvent): void =
  fcQMenuBar_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQMenuBar_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QMenuBarkeyPressEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qevent_types.QKeyEvent): void =
  fcQMenuBar_virtualbase_keyPressEvent(self.h, param1.h)

proc miqt_exec_callback_cQMenuBar_keyPressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QMenuBarmouseReleaseEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qevent_types.QMouseEvent): void =
  fcQMenuBar_virtualbase_mouseReleaseEvent(self.h, param1.h)

proc miqt_exec_callback_cQMenuBar_mouseReleaseEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QMenuBarmousePressEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qevent_types.QMouseEvent): void =
  fcQMenuBar_virtualbase_mousePressEvent(self.h, param1.h)

proc miqt_exec_callback_cQMenuBar_mousePressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QMenuBarmouseMoveEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qevent_types.QMouseEvent): void =
  fcQMenuBar_virtualbase_mouseMoveEvent(self.h, param1.h)

proc miqt_exec_callback_cQMenuBar_mouseMoveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QMenuBarleaveEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qcoreevent_types.QEvent): void =
  fcQMenuBar_virtualbase_leaveEvent(self.h, param1.h)

proc miqt_exec_callback_cQMenuBar_leaveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QMenuBarpaintEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qevent_types.QPaintEvent): void =
  fcQMenuBar_virtualbase_paintEvent(self.h, param1.h)

proc miqt_exec_callback_cQMenuBar_paintEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QMenuBarresizeEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qevent_types.QResizeEvent): void =
  fcQMenuBar_virtualbase_resizeEvent(self.h, param1.h)

proc miqt_exec_callback_cQMenuBar_resizeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QMenuBaractionEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qevent_types.QActionEvent): void =
  fcQMenuBar_virtualbase_actionEvent(self.h, param1.h)

proc miqt_exec_callback_cQMenuBar_actionEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: param1, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QMenuBarfocusOutEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qevent_types.QFocusEvent): void =
  fcQMenuBar_virtualbase_focusOutEvent(self.h, param1.h)

proc miqt_exec_callback_cQMenuBar_focusOutEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QMenuBarfocusInEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qevent_types.QFocusEvent): void =
  fcQMenuBar_virtualbase_focusInEvent(self.h, param1.h)

proc miqt_exec_callback_cQMenuBar_focusInEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QMenuBartimerEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qcoreevent_types.QTimerEvent): void =
  fcQMenuBar_virtualbase_timerEvent(self.h, param1.h)

proc miqt_exec_callback_cQMenuBar_timerEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QMenuBareventFilter*(self: gen_qmenubar_types.QMenuBar, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQMenuBar_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc miqt_exec_callback_cQMenuBar_eventFilter(vtbl: pointer, self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QMenuBarevent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qcoreevent_types.QEvent): bool =
  fcQMenuBar_virtualbase_event(self.h, param1.h)

proc miqt_exec_callback_cQMenuBar_event(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QMenuBardevType*(self: gen_qmenubar_types.QMenuBar, ): cint =
  fcQMenuBar_virtualbase_devType(self.h)

proc miqt_exec_callback_cQMenuBar_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QMenuBarhasHeightForWidth*(self: gen_qmenubar_types.QMenuBar, ): bool =
  fcQMenuBar_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQMenuBar_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QMenuBarpaintEngine*(self: gen_qmenubar_types.QMenuBar, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQMenuBar_virtualbase_paintEngine(self.h), owned: false)

proc miqt_exec_callback_cQMenuBar_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMenuBarmouseDoubleClickEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QMouseEvent): void =
  fcQMenuBar_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQMenuBar_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QMenuBarwheelEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QWheelEvent): void =
  fcQMenuBar_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQMenuBar_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QMenuBarkeyReleaseEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QKeyEvent): void =
  fcQMenuBar_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQMenuBar_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QMenuBarenterEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qcoreevent_types.QEvent): void =
  fcQMenuBar_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQMenuBar_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QMenuBarmoveEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QMoveEvent): void =
  fcQMenuBar_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQMenuBar_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QMenuBarcloseEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QCloseEvent): void =
  fcQMenuBar_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQMenuBar_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QMenuBarcontextMenuEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QContextMenuEvent): void =
  fcQMenuBar_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQMenuBar_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QMenuBartabletEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QTabletEvent): void =
  fcQMenuBar_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQMenuBar_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QMenuBardragEnterEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QDragEnterEvent): void =
  fcQMenuBar_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQMenuBar_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QMenuBardragMoveEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QDragMoveEvent): void =
  fcQMenuBar_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQMenuBar_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QMenuBardragLeaveEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQMenuBar_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQMenuBar_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QMenuBardropEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QDropEvent): void =
  fcQMenuBar_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQMenuBar_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QMenuBarshowEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QShowEvent): void =
  fcQMenuBar_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQMenuBar_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QMenuBarhideEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QHideEvent): void =
  fcQMenuBar_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQMenuBar_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QMenuBarnativeEvent*(self: gen_qmenubar_types.QMenuBar, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQMenuBar_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQMenuBar_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QMenuBarmetric*(self: gen_qmenubar_types.QMenuBar, param1: cint): cint =
  fcQMenuBar_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQMenuBar_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QMenuBarinitPainter*(self: gen_qmenubar_types.QMenuBar, painter: gen_qpainter_types.QPainter): void =
  fcQMenuBar_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQMenuBar_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QMenuBarredirected*(self: gen_qmenubar_types.QMenuBar, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQMenuBar_virtualbase_redirected(self.h, offset.h), owned: false)

proc miqt_exec_callback_cQMenuBar_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMenuBarsharedPainter*(self: gen_qmenubar_types.QMenuBar, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQMenuBar_virtualbase_sharedPainter(self.h), owned: false)

proc miqt_exec_callback_cQMenuBar_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMenuBarinputMethodEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQMenuBar_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQMenuBar_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QMenuBarinputMethodQuery*(self: gen_qmenubar_types.QMenuBar, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQMenuBar_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc miqt_exec_callback_cQMenuBar_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMenuBarfocusNextPrevChild*(self: gen_qmenubar_types.QMenuBar, next: bool): bool =
  fcQMenuBar_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQMenuBar_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QMenuBarchildEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qcoreevent_types.QChildEvent): void =
  fcQMenuBar_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQMenuBar_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QMenuBarcustomEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qcoreevent_types.QEvent): void =
  fcQMenuBar_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQMenuBar_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QMenuBarconnectNotify*(self: gen_qmenubar_types.QMenuBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMenuBar_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQMenuBar_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QMenuBardisconnectNotify*(self: gen_qmenubar_types.QMenuBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMenuBar_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQMenuBar_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](vtbl)
  let self = QMenuBar(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQMenuBar* {.inheritable.} = ref object of QMenuBar
  vtbl*: cQMenuBarVTable
method metaObject*(self: VirtualQMenuBar, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QMenuBarmetaObject(self[])
proc miqt_exec_method_cQMenuBar_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQMenuBar, param1: cstring): pointer {.base.} =
  QMenuBarmetacast(self[], param1)
proc miqt_exec_method_cQMenuBar_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQMenuBar, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QMenuBarmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQMenuBar_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method sizeHint*(self: VirtualQMenuBar, ): gen_qsize_types.QSize {.base.} =
  QMenuBarsizeHint(self[])
proc miqt_exec_method_cQMenuBar_sizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  var virtualReturn = vtbl.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQMenuBar, ): gen_qsize_types.QSize {.base.} =
  QMenuBarminimumSizeHint(self[])
proc miqt_exec_method_cQMenuBar_minimumSizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  var virtualReturn = vtbl.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method heightForWidth*(self: VirtualQMenuBar, param1: cint): cint {.base.} =
  QMenuBarheightForWidth(self[], param1)
proc miqt_exec_method_cQMenuBar_heightForWidth(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.heightForWidth(slotval1)
  virtualReturn

method setVisible*(self: VirtualQMenuBar, visible: bool): void {.base.} =
  QMenuBarsetVisible(self[], visible)
proc miqt_exec_method_cQMenuBar_setVisible(vtbl: pointer, inst: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = visible
  vtbl.setVisible(slotval1)

method changeEvent*(self: VirtualQMenuBar, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QMenuBarchangeEvent(self[], param1)
proc miqt_exec_method_cQMenuBar_changeEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl.changeEvent(slotval1)

method keyPressEvent*(self: VirtualQMenuBar, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QMenuBarkeyPressEvent(self[], param1)
proc miqt_exec_method_cQMenuBar_keyPressEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl.keyPressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQMenuBar, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QMenuBarmouseReleaseEvent(self[], param1)
proc miqt_exec_method_cQMenuBar_mouseReleaseEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl.mouseReleaseEvent(slotval1)

method mousePressEvent*(self: VirtualQMenuBar, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QMenuBarmousePressEvent(self[], param1)
proc miqt_exec_method_cQMenuBar_mousePressEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl.mousePressEvent(slotval1)

method mouseMoveEvent*(self: VirtualQMenuBar, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QMenuBarmouseMoveEvent(self[], param1)
proc miqt_exec_method_cQMenuBar_mouseMoveEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl.mouseMoveEvent(slotval1)

method leaveEvent*(self: VirtualQMenuBar, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QMenuBarleaveEvent(self[], param1)
proc miqt_exec_method_cQMenuBar_leaveEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl.leaveEvent(slotval1)

method paintEvent*(self: VirtualQMenuBar, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QMenuBarpaintEvent(self[], param1)
proc miqt_exec_method_cQMenuBar_paintEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl.paintEvent(slotval1)

method resizeEvent*(self: VirtualQMenuBar, param1: gen_qevent_types.QResizeEvent): void {.base.} =
  QMenuBarresizeEvent(self[], param1)
proc miqt_exec_method_cQMenuBar_resizeEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  vtbl.resizeEvent(slotval1)

method actionEvent*(self: VirtualQMenuBar, param1: gen_qevent_types.QActionEvent): void {.base.} =
  QMenuBaractionEvent(self[], param1)
proc miqt_exec_method_cQMenuBar_actionEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qevent_types.QActionEvent(h: param1, owned: false)
  vtbl.actionEvent(slotval1)

method focusOutEvent*(self: VirtualQMenuBar, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QMenuBarfocusOutEvent(self[], param1)
proc miqt_exec_method_cQMenuBar_focusOutEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl.focusOutEvent(slotval1)

method focusInEvent*(self: VirtualQMenuBar, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QMenuBarfocusInEvent(self[], param1)
proc miqt_exec_method_cQMenuBar_focusInEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl.focusInEvent(slotval1)

method timerEvent*(self: VirtualQMenuBar, param1: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QMenuBartimerEvent(self[], param1)
proc miqt_exec_method_cQMenuBar_timerEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  vtbl.timerEvent(slotval1)

method eventFilter*(self: VirtualQMenuBar, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.base.} =
  QMenuBareventFilter(self[], param1, param2)
proc miqt_exec_method_cQMenuBar_eventFilter(vtbl: pointer, inst: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method event*(self: VirtualQMenuBar, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QMenuBarevent(self[], param1)
proc miqt_exec_method_cQMenuBar_event(vtbl: pointer, inst: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method devType*(self: VirtualQMenuBar, ): cint {.base.} =
  QMenuBardevType(self[])
proc miqt_exec_method_cQMenuBar_devType(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  var virtualReturn = vtbl.devType()
  virtualReturn

method hasHeightForWidth*(self: VirtualQMenuBar, ): bool {.base.} =
  QMenuBarhasHeightForWidth(self[])
proc miqt_exec_method_cQMenuBar_hasHeightForWidth(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  var virtualReturn = vtbl.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQMenuBar, ): gen_qpaintengine_types.QPaintEngine {.base.} =
  QMenuBarpaintEngine(self[])
proc miqt_exec_method_cQMenuBar_paintEngine(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  var virtualReturn = vtbl.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mouseDoubleClickEvent*(self: VirtualQMenuBar, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QMenuBarmouseDoubleClickEvent(self[], event)
proc miqt_exec_method_cQMenuBar_mouseDoubleClickEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseDoubleClickEvent(slotval1)

method wheelEvent*(self: VirtualQMenuBar, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QMenuBarwheelEvent(self[], event)
proc miqt_exec_method_cQMenuBar_wheelEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl.wheelEvent(slotval1)

method keyReleaseEvent*(self: VirtualQMenuBar, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QMenuBarkeyReleaseEvent(self[], event)
proc miqt_exec_method_cQMenuBar_keyReleaseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl.keyReleaseEvent(slotval1)

method enterEvent*(self: VirtualQMenuBar, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QMenuBarenterEvent(self[], event)
proc miqt_exec_method_cQMenuBar_enterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.enterEvent(slotval1)

method moveEvent*(self: VirtualQMenuBar, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QMenuBarmoveEvent(self[], event)
proc miqt_exec_method_cQMenuBar_moveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl.moveEvent(slotval1)

method closeEvent*(self: VirtualQMenuBar, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QMenuBarcloseEvent(self[], event)
proc miqt_exec_method_cQMenuBar_closeEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl.closeEvent(slotval1)

method contextMenuEvent*(self: VirtualQMenuBar, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QMenuBarcontextMenuEvent(self[], event)
proc miqt_exec_method_cQMenuBar_contextMenuEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl.contextMenuEvent(slotval1)

method tabletEvent*(self: VirtualQMenuBar, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QMenuBartabletEvent(self[], event)
proc miqt_exec_method_cQMenuBar_tabletEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl.tabletEvent(slotval1)

method dragEnterEvent*(self: VirtualQMenuBar, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QMenuBardragEnterEvent(self[], event)
proc miqt_exec_method_cQMenuBar_dragEnterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQMenuBar, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QMenuBardragMoveEvent(self[], event)
proc miqt_exec_method_cQMenuBar_dragMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQMenuBar, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QMenuBardragLeaveEvent(self[], event)
proc miqt_exec_method_cQMenuBar_dragLeaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQMenuBar, event: gen_qevent_types.QDropEvent): void {.base.} =
  QMenuBardropEvent(self[], event)
proc miqt_exec_method_cQMenuBar_dropEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl.dropEvent(slotval1)

method showEvent*(self: VirtualQMenuBar, event: gen_qevent_types.QShowEvent): void {.base.} =
  QMenuBarshowEvent(self[], event)
proc miqt_exec_method_cQMenuBar_showEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl.showEvent(slotval1)

method hideEvent*(self: VirtualQMenuBar, event: gen_qevent_types.QHideEvent): void {.base.} =
  QMenuBarhideEvent(self[], event)
proc miqt_exec_method_cQMenuBar_hideEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl.hideEvent(slotval1)

method nativeEvent*(self: VirtualQMenuBar, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QMenuBarnativeEvent(self[], eventType, message, resultVal)
proc miqt_exec_method_cQMenuBar_nativeEvent(vtbl: pointer, inst: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQMenuBar, param1: cint): cint {.base.} =
  QMenuBarmetric(self[], param1)
proc miqt_exec_method_cQMenuBar_metric(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQMenuBar, painter: gen_qpainter_types.QPainter): void {.base.} =
  QMenuBarinitPainter(self[], painter)
proc miqt_exec_method_cQMenuBar_initPainter(vtbl: pointer, inst: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl.initPainter(slotval1)

method redirected*(self: VirtualQMenuBar, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QMenuBarredirected(self[], offset)
proc miqt_exec_method_cQMenuBar_redirected(vtbl: pointer, inst: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQMenuBar, ): gen_qpainter_types.QPainter {.base.} =
  QMenuBarsharedPainter(self[])
proc miqt_exec_method_cQMenuBar_sharedPainter(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  var virtualReturn = vtbl.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQMenuBar, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QMenuBarinputMethodEvent(self[], param1)
proc miqt_exec_method_cQMenuBar_inputMethodEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQMenuBar, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QMenuBarinputMethodQuery(self[], param1)
proc miqt_exec_method_cQMenuBar_inputMethodQuery(vtbl: pointer, inst: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQMenuBar, next: bool): bool {.base.} =
  QMenuBarfocusNextPrevChild(self[], next)
proc miqt_exec_method_cQMenuBar_focusNextPrevChild(vtbl: pointer, inst: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = next
  var virtualReturn = vtbl.focusNextPrevChild(slotval1)
  virtualReturn

method childEvent*(self: VirtualQMenuBar, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QMenuBarchildEvent(self[], event)
proc miqt_exec_method_cQMenuBar_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQMenuBar, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QMenuBarcustomEvent(self[], event)
proc miqt_exec_method_cQMenuBar_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQMenuBar, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QMenuBarconnectNotify(self[], signal)
proc miqt_exec_method_cQMenuBar_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQMenuBar, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QMenuBardisconnectNotify(self[], signal)
proc miqt_exec_method_cQMenuBar_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQMenuBar](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc initStyleOption*(self: gen_qmenubar_types.QMenuBar, option: gen_qstyleoption_types.QStyleOptionMenuItem, action: gen_qaction_types.QAction): void =
  fcQMenuBar_protectedbase_initStyleOption(self.h, option.h, action.h)

proc updateMicroFocus*(self: gen_qmenubar_types.QMenuBar, ): void =
  fcQMenuBar_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qmenubar_types.QMenuBar, ): void =
  fcQMenuBar_protectedbase_create(self.h)

proc destroy*(self: gen_qmenubar_types.QMenuBar, ): void =
  fcQMenuBar_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qmenubar_types.QMenuBar, ): bool =
  fcQMenuBar_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qmenubar_types.QMenuBar, ): bool =
  fcQMenuBar_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qmenubar_types.QMenuBar, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMenuBar_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qmenubar_types.QMenuBar, ): cint =
  fcQMenuBar_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qmenubar_types.QMenuBar, signal: cstring): cint =
  fcQMenuBar_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qmenubar_types.QMenuBar, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMenuBar_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qmenubar_types.QMenuBar,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QMenuBarVTable = nil): gen_qmenubar_types.QMenuBar =
  let vtbl = if vtbl == nil: new QMenuBarVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQMenuBarVTable, _: ptr cQMenuBar) {.cdecl.} =
    let vtbl = cast[ref QMenuBarVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQMenuBar_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQMenuBar_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQMenuBar_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQMenuBar_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQMenuBar_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQMenuBar_heightForWidth
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQMenuBar_setVisible
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQMenuBar_changeEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQMenuBar_keyPressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQMenuBar_mouseReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQMenuBar_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQMenuBar_mouseMoveEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQMenuBar_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQMenuBar_paintEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQMenuBar_resizeEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQMenuBar_actionEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQMenuBar_focusOutEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQMenuBar_focusInEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQMenuBar_timerEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQMenuBar_eventFilter
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQMenuBar_event
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQMenuBar_devType
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQMenuBar_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQMenuBar_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQMenuBar_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQMenuBar_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQMenuBar_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQMenuBar_enterEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQMenuBar_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQMenuBar_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQMenuBar_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQMenuBar_tabletEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQMenuBar_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQMenuBar_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQMenuBar_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQMenuBar_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQMenuBar_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQMenuBar_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQMenuBar_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQMenuBar_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQMenuBar_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQMenuBar_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQMenuBar_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQMenuBar_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQMenuBar_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQMenuBar_focusNextPrevChild
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQMenuBar_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQMenuBar_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQMenuBar_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQMenuBar_disconnectNotify
  gen_qmenubar_types.QMenuBar(h: fcQMenuBar_new(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qmenubar_types.QMenuBar,
    vtbl: ref QMenuBarVTable = nil): gen_qmenubar_types.QMenuBar =
  let vtbl = if vtbl == nil: new QMenuBarVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQMenuBarVTable, _: ptr cQMenuBar) {.cdecl.} =
    let vtbl = cast[ref QMenuBarVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQMenuBar_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQMenuBar_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQMenuBar_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQMenuBar_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQMenuBar_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQMenuBar_heightForWidth
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQMenuBar_setVisible
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQMenuBar_changeEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQMenuBar_keyPressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQMenuBar_mouseReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQMenuBar_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQMenuBar_mouseMoveEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQMenuBar_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQMenuBar_paintEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQMenuBar_resizeEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQMenuBar_actionEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQMenuBar_focusOutEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQMenuBar_focusInEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQMenuBar_timerEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQMenuBar_eventFilter
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQMenuBar_event
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQMenuBar_devType
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQMenuBar_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQMenuBar_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQMenuBar_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQMenuBar_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQMenuBar_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQMenuBar_enterEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQMenuBar_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQMenuBar_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQMenuBar_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQMenuBar_tabletEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQMenuBar_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQMenuBar_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQMenuBar_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQMenuBar_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQMenuBar_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQMenuBar_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQMenuBar_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQMenuBar_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQMenuBar_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQMenuBar_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQMenuBar_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQMenuBar_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQMenuBar_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQMenuBar_focusNextPrevChild
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQMenuBar_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQMenuBar_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQMenuBar_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQMenuBar_disconnectNotify
  gen_qmenubar_types.QMenuBar(h: fcQMenuBar_new2(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qmenubar_types.QMenuBar,
    parent: gen_qwidget_types.QWidget,
    vtbl: VirtualQMenuBar) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQMenuBarVTable, _: ptr cQMenuBar) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQMenuBar()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQMenuBar_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQMenuBar_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQMenuBar_metacall
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQMenuBar_sizeHint
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQMenuBar_minimumSizeHint
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQMenuBar_heightForWidth
  vtbl[].vtbl.setVisible = miqt_exec_method_cQMenuBar_setVisible
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQMenuBar_changeEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQMenuBar_keyPressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQMenuBar_mouseReleaseEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQMenuBar_mousePressEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQMenuBar_mouseMoveEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQMenuBar_leaveEvent
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQMenuBar_paintEvent
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQMenuBar_resizeEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQMenuBar_actionEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQMenuBar_focusOutEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQMenuBar_focusInEvent
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQMenuBar_timerEvent
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQMenuBar_eventFilter
  vtbl[].vtbl.event = miqt_exec_method_cQMenuBar_event
  vtbl[].vtbl.devType = miqt_exec_method_cQMenuBar_devType
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQMenuBar_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQMenuBar_paintEngine
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQMenuBar_mouseDoubleClickEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQMenuBar_wheelEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQMenuBar_keyReleaseEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQMenuBar_enterEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQMenuBar_moveEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQMenuBar_closeEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQMenuBar_contextMenuEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQMenuBar_tabletEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQMenuBar_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQMenuBar_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQMenuBar_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQMenuBar_dropEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQMenuBar_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQMenuBar_hideEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQMenuBar_nativeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQMenuBar_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQMenuBar_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQMenuBar_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQMenuBar_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQMenuBar_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQMenuBar_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQMenuBar_focusNextPrevChild
  vtbl[].vtbl.childEvent = miqt_exec_method_cQMenuBar_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQMenuBar_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQMenuBar_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQMenuBar_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQMenuBar_new(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qmenubar_types.QMenuBar,
    vtbl: VirtualQMenuBar) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQMenuBarVTable, _: ptr cQMenuBar) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQMenuBar()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQMenuBar, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQMenuBar_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQMenuBar_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQMenuBar_metacall
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQMenuBar_sizeHint
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQMenuBar_minimumSizeHint
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQMenuBar_heightForWidth
  vtbl[].vtbl.setVisible = miqt_exec_method_cQMenuBar_setVisible
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQMenuBar_changeEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQMenuBar_keyPressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQMenuBar_mouseReleaseEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQMenuBar_mousePressEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQMenuBar_mouseMoveEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQMenuBar_leaveEvent
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQMenuBar_paintEvent
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQMenuBar_resizeEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQMenuBar_actionEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQMenuBar_focusOutEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQMenuBar_focusInEvent
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQMenuBar_timerEvent
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQMenuBar_eventFilter
  vtbl[].vtbl.event = miqt_exec_method_cQMenuBar_event
  vtbl[].vtbl.devType = miqt_exec_method_cQMenuBar_devType
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQMenuBar_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQMenuBar_paintEngine
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQMenuBar_mouseDoubleClickEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQMenuBar_wheelEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQMenuBar_keyReleaseEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQMenuBar_enterEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQMenuBar_moveEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQMenuBar_closeEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQMenuBar_contextMenuEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQMenuBar_tabletEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQMenuBar_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQMenuBar_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQMenuBar_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQMenuBar_dropEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQMenuBar_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQMenuBar_hideEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQMenuBar_nativeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQMenuBar_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQMenuBar_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQMenuBar_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQMenuBar_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQMenuBar_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQMenuBar_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQMenuBar_focusNextPrevChild
  vtbl[].vtbl.childEvent = miqt_exec_method_cQMenuBar_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQMenuBar_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQMenuBar_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQMenuBar_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQMenuBar_new2(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qmenubar_types.QMenuBar): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMenuBar_staticMetaObject())
