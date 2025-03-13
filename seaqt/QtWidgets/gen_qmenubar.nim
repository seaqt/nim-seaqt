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

proc fcQMenuBar_metaObject(self: pointer): pointer {.importc: "QMenuBar_metaObject".}
proc fcQMenuBar_metacast(self: pointer, param1: cstring): pointer {.importc: "QMenuBar_metacast".}
proc fcQMenuBar_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMenuBar_metacall".}
proc fcQMenuBar_tr(s: cstring): struct_miqt_string {.importc: "QMenuBar_tr".}
proc fcQMenuBar_trUtf8(s: cstring): struct_miqt_string {.importc: "QMenuBar_trUtf8".}
proc fcQMenuBar_addAction(self: pointer, text: struct_miqt_string): pointer {.importc: "QMenuBar_addAction".}
proc fcQMenuBar_addMenu(self: pointer, menu: pointer): pointer {.importc: "QMenuBar_addMenu".}
proc fcQMenuBar_addMenuWithTitle(self: pointer, title: struct_miqt_string): pointer {.importc: "QMenuBar_addMenuWithTitle".}
proc fcQMenuBar_addMenu2(self: pointer, icon: pointer, title: struct_miqt_string): pointer {.importc: "QMenuBar_addMenu2".}
proc fcQMenuBar_addSeparator(self: pointer): pointer {.importc: "QMenuBar_addSeparator".}
proc fcQMenuBar_insertSeparator(self: pointer, before: pointer): pointer {.importc: "QMenuBar_insertSeparator".}
proc fcQMenuBar_insertMenu(self: pointer, before: pointer, menu: pointer): pointer {.importc: "QMenuBar_insertMenu".}
proc fcQMenuBar_clear(self: pointer): void {.importc: "QMenuBar_clear".}
proc fcQMenuBar_activeAction(self: pointer): pointer {.importc: "QMenuBar_activeAction".}
proc fcQMenuBar_setActiveAction(self: pointer, action: pointer): void {.importc: "QMenuBar_setActiveAction".}
proc fcQMenuBar_setDefaultUp(self: pointer, defaultUp: bool): void {.importc: "QMenuBar_setDefaultUp".}
proc fcQMenuBar_isDefaultUp(self: pointer): bool {.importc: "QMenuBar_isDefaultUp".}
proc fcQMenuBar_sizeHint(self: pointer): pointer {.importc: "QMenuBar_sizeHint".}
proc fcQMenuBar_minimumSizeHint(self: pointer): pointer {.importc: "QMenuBar_minimumSizeHint".}
proc fcQMenuBar_heightForWidth(self: pointer, param1: cint): cint {.importc: "QMenuBar_heightForWidth".}
proc fcQMenuBar_actionGeometry(self: pointer, param1: pointer): pointer {.importc: "QMenuBar_actionGeometry".}
proc fcQMenuBar_actionAt(self: pointer, param1: pointer): pointer {.importc: "QMenuBar_actionAt".}
proc fcQMenuBar_setCornerWidget(self: pointer, w: pointer): void {.importc: "QMenuBar_setCornerWidget".}
proc fcQMenuBar_cornerWidget(self: pointer): pointer {.importc: "QMenuBar_cornerWidget".}
proc fcQMenuBar_isNativeMenuBar(self: pointer): bool {.importc: "QMenuBar_isNativeMenuBar".}
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
proc fcQMenuBar_vtbl(self: pointer): pointer {.importc: "QMenuBar_vtbl".}
proc fcQMenuBar_vdata(self: pointer): pointer {.importc: "QMenuBar_vdata".}
type cQMenuBarVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQMenuBar_virtualbase_metaObject(self: pointer): pointer {.importc: "QMenuBar_virtualbase_metaObject".}
proc fcQMenuBar_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QMenuBar_virtualbase_metacast".}
proc fcQMenuBar_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMenuBar_virtualbase_metacall".}
proc fcQMenuBar_virtualbase_sizeHint(self: pointer): pointer {.importc: "QMenuBar_virtualbase_sizeHint".}
proc fcQMenuBar_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QMenuBar_virtualbase_minimumSizeHint".}
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
proc fcQMenuBar_virtualbase_devType(self: pointer): cint {.importc: "QMenuBar_virtualbase_devType".}
proc fcQMenuBar_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QMenuBar_virtualbase_hasHeightForWidth".}
proc fcQMenuBar_virtualbase_paintEngine(self: pointer): pointer {.importc: "QMenuBar_virtualbase_paintEngine".}
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
proc fcQMenuBar_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QMenuBar_virtualbase_sharedPainter".}
proc fcQMenuBar_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QMenuBar_virtualbase_inputMethodEvent".}
proc fcQMenuBar_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QMenuBar_virtualbase_inputMethodQuery".}
proc fcQMenuBar_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QMenuBar_virtualbase_focusNextPrevChild".}
proc fcQMenuBar_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QMenuBar_virtualbase_childEvent".}
proc fcQMenuBar_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QMenuBar_virtualbase_customEvent".}
proc fcQMenuBar_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QMenuBar_virtualbase_connectNotify".}
proc fcQMenuBar_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QMenuBar_virtualbase_disconnectNotify".}
proc fcQMenuBar_protectedbase_initStyleOption(self: pointer, option: pointer, action: pointer): void {.importc: "QMenuBar_protectedbase_initStyleOption".}
proc fcQMenuBar_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QMenuBar_protectedbase_updateMicroFocus".}
proc fcQMenuBar_protectedbase_create(self: pointer): void {.importc: "QMenuBar_protectedbase_create".}
proc fcQMenuBar_protectedbase_destroy(self: pointer): void {.importc: "QMenuBar_protectedbase_destroy".}
proc fcQMenuBar_protectedbase_focusNextChild(self: pointer): bool {.importc: "QMenuBar_protectedbase_focusNextChild".}
proc fcQMenuBar_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QMenuBar_protectedbase_focusPreviousChild".}
proc fcQMenuBar_protectedbase_sender(self: pointer): pointer {.importc: "QMenuBar_protectedbase_sender".}
proc fcQMenuBar_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QMenuBar_protectedbase_senderSignalIndex".}
proc fcQMenuBar_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QMenuBar_protectedbase_receivers".}
proc fcQMenuBar_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QMenuBar_protectedbase_isSignalConnected".}
proc fcQMenuBar_new(vtbl, vdata: pointer, parent: pointer): ptr cQMenuBar {.importc: "QMenuBar_new".}
proc fcQMenuBar_new2(vtbl, vdata: pointer): ptr cQMenuBar {.importc: "QMenuBar_new2".}
proc fcQMenuBar_staticMetaObject(): pointer {.importc: "QMenuBar_staticMetaObject".}

proc metaObject*(self: gen_qmenubar_types.QMenuBar): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMenuBar_metaObject(self.h), owned: false)

proc metacast*(self: gen_qmenubar_types.QMenuBar, param1: cstring): pointer =
  fcQMenuBar_metacast(self.h, param1)

proc metacall*(self: gen_qmenubar_types.QMenuBar, param1: cint, param2: cint, param3: pointer): cint =
  fcQMenuBar_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmenubar_types.QMenuBar, s: cstring): string =
  let v_ms = fcQMenuBar_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmenubar_types.QMenuBar, s: cstring): string =
  let v_ms = fcQMenuBar_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc addAction*(self: gen_qmenubar_types.QMenuBar, text: openArray[char]): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenuBar_addAction(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: false)

proc addMenu*(self: gen_qmenubar_types.QMenuBar, menu: gen_qmenu_types.QMenu): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenuBar_addMenu(self.h, menu.h), owned: false)

proc addMenu*(self: gen_qmenubar_types.QMenuBar, title: openArray[char]): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fcQMenuBar_addMenuWithTitle(self.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title)))), owned: false)

proc addMenu*(self: gen_qmenubar_types.QMenuBar, icon: gen_qicon_types.QIcon, title: openArray[char]): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fcQMenuBar_addMenu2(self.h, icon.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title)))), owned: false)

proc addSeparator*(self: gen_qmenubar_types.QMenuBar): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenuBar_addSeparator(self.h), owned: false)

proc insertSeparator*(self: gen_qmenubar_types.QMenuBar, before: gen_qaction_types.QAction): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenuBar_insertSeparator(self.h, before.h), owned: false)

proc insertMenu*(self: gen_qmenubar_types.QMenuBar, before: gen_qaction_types.QAction, menu: gen_qmenu_types.QMenu): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenuBar_insertMenu(self.h, before.h, menu.h), owned: false)

proc clear*(self: gen_qmenubar_types.QMenuBar): void =
  fcQMenuBar_clear(self.h)

proc activeAction*(self: gen_qmenubar_types.QMenuBar): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenuBar_activeAction(self.h), owned: false)

proc setActiveAction*(self: gen_qmenubar_types.QMenuBar, action: gen_qaction_types.QAction): void =
  fcQMenuBar_setActiveAction(self.h, action.h)

proc setDefaultUp*(self: gen_qmenubar_types.QMenuBar, defaultUp: bool): void =
  fcQMenuBar_setDefaultUp(self.h, defaultUp)

proc isDefaultUp*(self: gen_qmenubar_types.QMenuBar): bool =
  fcQMenuBar_isDefaultUp(self.h)

proc sizeHint*(self: gen_qmenubar_types.QMenuBar): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMenuBar_sizeHint(self.h), owned: true)

proc minimumSizeHint*(self: gen_qmenubar_types.QMenuBar): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMenuBar_minimumSizeHint(self.h), owned: true)

proc heightForWidth*(self: gen_qmenubar_types.QMenuBar, param1: cint): cint =
  fcQMenuBar_heightForWidth(self.h, param1)

proc actionGeometry*(self: gen_qmenubar_types.QMenuBar, param1: gen_qaction_types.QAction): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQMenuBar_actionGeometry(self.h, param1.h), owned: true)

proc actionAt*(self: gen_qmenubar_types.QMenuBar, param1: gen_qpoint_types.QPoint): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenuBar_actionAt(self.h, param1.h), owned: false)

proc setCornerWidget*(self: gen_qmenubar_types.QMenuBar, w: gen_qwidget_types.QWidget): void =
  fcQMenuBar_setCornerWidget(self.h, w.h)

proc cornerWidget*(self: gen_qmenubar_types.QMenuBar): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQMenuBar_cornerWidget(self.h), owned: false)

proc isNativeMenuBar*(self: gen_qmenubar_types.QMenuBar): bool =
  fcQMenuBar_isNativeMenuBar(self.h)

proc setNativeMenuBar*(self: gen_qmenubar_types.QMenuBar, nativeMenuBar: bool): void =
  fcQMenuBar_setNativeMenuBar(self.h, nativeMenuBar)

proc setVisible*(self: gen_qmenubar_types.QMenuBar, visible: bool): void =
  fcQMenuBar_setVisible(self.h, visible)

proc triggered*(self: gen_qmenubar_types.QMenuBar, action: gen_qaction_types.QAction): void =
  fcQMenuBar_triggered(self.h, action.h)

type QMenuBartriggeredSlot* = proc(action: gen_qaction_types.QAction)
proc cQMenuBar_slot_callback_triggered(slot: int, action: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QMenuBartriggeredSlot](cast[pointer](slot))
  let slotval1 = gen_qaction_types.QAction(h: action, owned: false)

  nimfunc[](slotval1)

proc cQMenuBar_slot_callback_triggered_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMenuBartriggeredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontriggered*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBartriggeredSlot) =
  var tmp = new QMenuBartriggeredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_connect_triggered(self.h, cast[int](addr tmp[]), cQMenuBar_slot_callback_triggered, cQMenuBar_slot_callback_triggered_release)

proc hovered*(self: gen_qmenubar_types.QMenuBar, action: gen_qaction_types.QAction): void =
  fcQMenuBar_hovered(self.h, action.h)

type QMenuBarhoveredSlot* = proc(action: gen_qaction_types.QAction)
proc cQMenuBar_slot_callback_hovered(slot: int, action: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QMenuBarhoveredSlot](cast[pointer](slot))
  let slotval1 = gen_qaction_types.QAction(h: action, owned: false)

  nimfunc[](slotval1)

proc cQMenuBar_slot_callback_hovered_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMenuBarhoveredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onhovered*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarhoveredSlot) =
  var tmp = new QMenuBarhoveredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_connect_hovered(self.h, cast[int](addr tmp[]), cQMenuBar_slot_callback_hovered, cQMenuBar_slot_callback_hovered_release)

proc tr*(_: type gen_qmenubar_types.QMenuBar, s: cstring, c: cstring): string =
  let v_ms = fcQMenuBar_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmenubar_types.QMenuBar, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMenuBar_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmenubar_types.QMenuBar, s: cstring, c: cstring): string =
  let v_ms = fcQMenuBar_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmenubar_types.QMenuBar, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMenuBar_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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
type QMenuBarnativeEventProc* = proc(self: QMenuBar, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
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
proc QMenuBarmetaObject*(self: gen_qmenubar_types.QMenuBar): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMenuBar_virtualbase_metaObject(self.h), owned: false)

proc cQMenuBar_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMenuBarmetacast*(self: gen_qmenubar_types.QMenuBar, param1: cstring): pointer =
  fcQMenuBar_virtualbase_metacast(self.h, param1)

proc cQMenuBar_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QMenuBarmetacall*(self: gen_qmenubar_types.QMenuBar, param1: cint, param2: cint, param3: pointer): cint =
  fcQMenuBar_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQMenuBar_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QMenuBarsizeHint*(self: gen_qmenubar_types.QMenuBar): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMenuBar_virtualbase_sizeHint(self.h), owned: true)

proc cQMenuBar_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMenuBarminimumSizeHint*(self: gen_qmenubar_types.QMenuBar): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMenuBar_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQMenuBar_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMenuBarheightForWidth*(self: gen_qmenubar_types.QMenuBar, param1: cint): cint =
  fcQMenuBar_virtualbase_heightForWidth(self.h, param1)

proc cQMenuBar_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QMenuBarsetVisible*(self: gen_qmenubar_types.QMenuBar, visible: bool): void =
  fcQMenuBar_virtualbase_setVisible(self.h, visible)

proc cQMenuBar_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QMenuBarchangeEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qcoreevent_types.QEvent): void =
  fcQMenuBar_virtualbase_changeEvent(self.h, param1.h)

proc cQMenuBar_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QMenuBarkeyPressEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qevent_types.QKeyEvent): void =
  fcQMenuBar_virtualbase_keyPressEvent(self.h, param1.h)

proc cQMenuBar_vtable_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QMenuBarmouseReleaseEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qevent_types.QMouseEvent): void =
  fcQMenuBar_virtualbase_mouseReleaseEvent(self.h, param1.h)

proc cQMenuBar_vtable_callback_mouseReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QMenuBarmousePressEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qevent_types.QMouseEvent): void =
  fcQMenuBar_virtualbase_mousePressEvent(self.h, param1.h)

proc cQMenuBar_vtable_callback_mousePressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QMenuBarmouseMoveEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qevent_types.QMouseEvent): void =
  fcQMenuBar_virtualbase_mouseMoveEvent(self.h, param1.h)

proc cQMenuBar_vtable_callback_mouseMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QMenuBarleaveEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qcoreevent_types.QEvent): void =
  fcQMenuBar_virtualbase_leaveEvent(self.h, param1.h)

proc cQMenuBar_vtable_callback_leaveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QMenuBarpaintEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qevent_types.QPaintEvent): void =
  fcQMenuBar_virtualbase_paintEvent(self.h, param1.h)

proc cQMenuBar_vtable_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QMenuBarresizeEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qevent_types.QResizeEvent): void =
  fcQMenuBar_virtualbase_resizeEvent(self.h, param1.h)

proc cQMenuBar_vtable_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QMenuBaractionEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qevent_types.QActionEvent): void =
  fcQMenuBar_virtualbase_actionEvent(self.h, param1.h)

proc cQMenuBar_vtable_callback_actionEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: param1, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QMenuBarfocusOutEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qevent_types.QFocusEvent): void =
  fcQMenuBar_virtualbase_focusOutEvent(self.h, param1.h)

proc cQMenuBar_vtable_callback_focusOutEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QMenuBarfocusInEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qevent_types.QFocusEvent): void =
  fcQMenuBar_virtualbase_focusInEvent(self.h, param1.h)

proc cQMenuBar_vtable_callback_focusInEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QMenuBartimerEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qcoreevent_types.QTimerEvent): void =
  fcQMenuBar_virtualbase_timerEvent(self.h, param1.h)

proc cQMenuBar_vtable_callback_timerEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QMenuBareventFilter*(self: gen_qmenubar_types.QMenuBar, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQMenuBar_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc cQMenuBar_vtable_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QMenuBarevent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qcoreevent_types.QEvent): bool =
  fcQMenuBar_virtualbase_event(self.h, param1.h)

proc cQMenuBar_vtable_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QMenuBardevType*(self: gen_qmenubar_types.QMenuBar): cint =
  fcQMenuBar_virtualbase_devType(self.h)

proc cQMenuBar_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QMenuBarhasHeightForWidth*(self: gen_qmenubar_types.QMenuBar): bool =
  fcQMenuBar_virtualbase_hasHeightForWidth(self.h)

proc cQMenuBar_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QMenuBarpaintEngine*(self: gen_qmenubar_types.QMenuBar): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQMenuBar_virtualbase_paintEngine(self.h), owned: false)

proc cQMenuBar_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMenuBarmouseDoubleClickEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QMouseEvent): void =
  fcQMenuBar_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQMenuBar_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QMenuBarwheelEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QWheelEvent): void =
  fcQMenuBar_virtualbase_wheelEvent(self.h, event.h)

proc cQMenuBar_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QMenuBarkeyReleaseEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QKeyEvent): void =
  fcQMenuBar_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQMenuBar_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QMenuBarenterEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qcoreevent_types.QEvent): void =
  fcQMenuBar_virtualbase_enterEvent(self.h, event.h)

proc cQMenuBar_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QMenuBarmoveEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QMoveEvent): void =
  fcQMenuBar_virtualbase_moveEvent(self.h, event.h)

proc cQMenuBar_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QMenuBarcloseEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QCloseEvent): void =
  fcQMenuBar_virtualbase_closeEvent(self.h, event.h)

proc cQMenuBar_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QMenuBarcontextMenuEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QContextMenuEvent): void =
  fcQMenuBar_virtualbase_contextMenuEvent(self.h, event.h)

proc cQMenuBar_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QMenuBartabletEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QTabletEvent): void =
  fcQMenuBar_virtualbase_tabletEvent(self.h, event.h)

proc cQMenuBar_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QMenuBardragEnterEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QDragEnterEvent): void =
  fcQMenuBar_virtualbase_dragEnterEvent(self.h, event.h)

proc cQMenuBar_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QMenuBardragMoveEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QDragMoveEvent): void =
  fcQMenuBar_virtualbase_dragMoveEvent(self.h, event.h)

proc cQMenuBar_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QMenuBardragLeaveEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQMenuBar_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQMenuBar_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QMenuBardropEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QDropEvent): void =
  fcQMenuBar_virtualbase_dropEvent(self.h, event.h)

proc cQMenuBar_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QMenuBarshowEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QShowEvent): void =
  fcQMenuBar_virtualbase_showEvent(self.h, event.h)

proc cQMenuBar_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QMenuBarhideEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QHideEvent): void =
  fcQMenuBar_virtualbase_hideEvent(self.h, event.h)

proc cQMenuBar_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QMenuBarnativeEvent*(self: gen_qmenubar_types.QMenuBar, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQMenuBar_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQMenuBar_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QMenuBarmetric*(self: gen_qmenubar_types.QMenuBar, param1: cint): cint =
  fcQMenuBar_virtualbase_metric(self.h, cint(param1))

proc cQMenuBar_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QMenuBarinitPainter*(self: gen_qmenubar_types.QMenuBar, painter: gen_qpainter_types.QPainter): void =
  fcQMenuBar_virtualbase_initPainter(self.h, painter.h)

proc cQMenuBar_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QMenuBarredirected*(self: gen_qmenubar_types.QMenuBar, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQMenuBar_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQMenuBar_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMenuBarsharedPainter*(self: gen_qmenubar_types.QMenuBar): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQMenuBar_virtualbase_sharedPainter(self.h), owned: false)

proc cQMenuBar_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMenuBarinputMethodEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQMenuBar_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQMenuBar_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QMenuBarinputMethodQuery*(self: gen_qmenubar_types.QMenuBar, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQMenuBar_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQMenuBar_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMenuBarfocusNextPrevChild*(self: gen_qmenubar_types.QMenuBar, next: bool): bool =
  fcQMenuBar_virtualbase_focusNextPrevChild(self.h, next)

proc cQMenuBar_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QMenuBarchildEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qcoreevent_types.QChildEvent): void =
  fcQMenuBar_virtualbase_childEvent(self.h, event.h)

proc cQMenuBar_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QMenuBarcustomEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qcoreevent_types.QEvent): void =
  fcQMenuBar_virtualbase_customEvent(self.h, event.h)

proc cQMenuBar_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QMenuBarconnectNotify*(self: gen_qmenubar_types.QMenuBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMenuBar_virtualbase_connectNotify(self.h, signal.h)

proc cQMenuBar_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QMenuBardisconnectNotify*(self: gen_qmenubar_types.QMenuBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMenuBar_virtualbase_disconnectNotify(self.h, signal.h)

proc cQMenuBar_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMenuBarVTable](fcQMenuBar_vdata(self))
  let self = QMenuBar(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQMenuBar* {.inheritable.} = ref object of QMenuBar
  vtbl*: cQMenuBarVTable
method metaObject*(self: VirtualQMenuBar): gen_qobjectdefs_types.QMetaObject {.base.} =
  QMenuBarmetaObject(self[])
proc cQMenuBar_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQMenuBar, param1: cstring): pointer {.base.} =
  QMenuBarmetacast(self[], param1)
proc cQMenuBar_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQMenuBar, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QMenuBarmetacall(self[], param1, param2, param3)
proc cQMenuBar_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method sizeHint*(self: VirtualQMenuBar): gen_qsize_types.QSize {.base.} =
  QMenuBarsizeHint(self[])
proc cQMenuBar_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQMenuBar): gen_qsize_types.QSize {.base.} =
  QMenuBarminimumSizeHint(self[])
proc cQMenuBar_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method heightForWidth*(self: VirtualQMenuBar, param1: cint): cint {.base.} =
  QMenuBarheightForWidth(self[], param1)
proc cQMenuBar_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method setVisible*(self: VirtualQMenuBar, visible: bool): void {.base.} =
  QMenuBarsetVisible(self[], visible)
proc cQMenuBar_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method changeEvent*(self: VirtualQMenuBar, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QMenuBarchangeEvent(self[], param1)
proc cQMenuBar_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

method keyPressEvent*(self: VirtualQMenuBar, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QMenuBarkeyPressEvent(self[], param1)
proc cQMenuBar_method_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  inst.keyPressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQMenuBar, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QMenuBarmouseReleaseEvent(self[], param1)
proc cQMenuBar_method_callback_mouseReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mousePressEvent*(self: VirtualQMenuBar, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QMenuBarmousePressEvent(self[], param1)
proc cQMenuBar_method_callback_mousePressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mousePressEvent(slotval1)

method mouseMoveEvent*(self: VirtualQMenuBar, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QMenuBarmouseMoveEvent(self[], param1)
proc cQMenuBar_method_callback_mouseMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mouseMoveEvent(slotval1)

method leaveEvent*(self: VirtualQMenuBar, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QMenuBarleaveEvent(self[], param1)
proc cQMenuBar_method_callback_leaveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.leaveEvent(slotval1)

method paintEvent*(self: VirtualQMenuBar, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QMenuBarpaintEvent(self[], param1)
proc cQMenuBar_method_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  inst.paintEvent(slotval1)

method resizeEvent*(self: VirtualQMenuBar, param1: gen_qevent_types.QResizeEvent): void {.base.} =
  QMenuBarresizeEvent(self[], param1)
proc cQMenuBar_method_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  inst.resizeEvent(slotval1)

method actionEvent*(self: VirtualQMenuBar, param1: gen_qevent_types.QActionEvent): void {.base.} =
  QMenuBaractionEvent(self[], param1)
proc cQMenuBar_method_callback_actionEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: param1, owned: false)
  inst.actionEvent(slotval1)

method focusOutEvent*(self: VirtualQMenuBar, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QMenuBarfocusOutEvent(self[], param1)
proc cQMenuBar_method_callback_focusOutEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  inst.focusOutEvent(slotval1)

method focusInEvent*(self: VirtualQMenuBar, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QMenuBarfocusInEvent(self[], param1)
proc cQMenuBar_method_callback_focusInEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  inst.focusInEvent(slotval1)

method timerEvent*(self: VirtualQMenuBar, param1: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QMenuBartimerEvent(self[], param1)
proc cQMenuBar_method_callback_timerEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  inst.timerEvent(slotval1)

method eventFilter*(self: VirtualQMenuBar, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.base.} =
  QMenuBareventFilter(self[], param1, param2)
proc cQMenuBar_method_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method event*(self: VirtualQMenuBar, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QMenuBarevent(self[], param1)
proc cQMenuBar_method_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method devType*(self: VirtualQMenuBar): cint {.base.} =
  QMenuBardevType(self[])
proc cQMenuBar_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method hasHeightForWidth*(self: VirtualQMenuBar): bool {.base.} =
  QMenuBarhasHeightForWidth(self[])
proc cQMenuBar_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQMenuBar): gen_qpaintengine_types.QPaintEngine {.base.} =
  QMenuBarpaintEngine(self[])
proc cQMenuBar_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mouseDoubleClickEvent*(self: VirtualQMenuBar, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QMenuBarmouseDoubleClickEvent(self[], event)
proc cQMenuBar_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method wheelEvent*(self: VirtualQMenuBar, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QMenuBarwheelEvent(self[], event)
proc cQMenuBar_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method keyReleaseEvent*(self: VirtualQMenuBar, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QMenuBarkeyReleaseEvent(self[], event)
proc cQMenuBar_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method enterEvent*(self: VirtualQMenuBar, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QMenuBarenterEvent(self[], event)
proc cQMenuBar_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method moveEvent*(self: VirtualQMenuBar, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QMenuBarmoveEvent(self[], event)
proc cQMenuBar_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method closeEvent*(self: VirtualQMenuBar, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QMenuBarcloseEvent(self[], event)
proc cQMenuBar_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method contextMenuEvent*(self: VirtualQMenuBar, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QMenuBarcontextMenuEvent(self[], event)
proc cQMenuBar_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

method tabletEvent*(self: VirtualQMenuBar, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QMenuBartabletEvent(self[], event)
proc cQMenuBar_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method dragEnterEvent*(self: VirtualQMenuBar, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QMenuBardragEnterEvent(self[], event)
proc cQMenuBar_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQMenuBar, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QMenuBardragMoveEvent(self[], event)
proc cQMenuBar_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQMenuBar, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QMenuBardragLeaveEvent(self[], event)
proc cQMenuBar_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQMenuBar, event: gen_qevent_types.QDropEvent): void {.base.} =
  QMenuBardropEvent(self[], event)
proc cQMenuBar_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method showEvent*(self: VirtualQMenuBar, event: gen_qevent_types.QShowEvent): void {.base.} =
  QMenuBarshowEvent(self[], event)
proc cQMenuBar_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method hideEvent*(self: VirtualQMenuBar, event: gen_qevent_types.QHideEvent): void {.base.} =
  QMenuBarhideEvent(self[], event)
proc cQMenuBar_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQMenuBar, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QMenuBarnativeEvent(self[], eventType, message, resultVal)
proc cQMenuBar_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQMenuBar, param1: cint): cint {.base.} =
  QMenuBarmetric(self[], param1)
proc cQMenuBar_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQMenuBar, painter: gen_qpainter_types.QPainter): void {.base.} =
  QMenuBarinitPainter(self[], painter)
proc cQMenuBar_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQMenuBar, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QMenuBarredirected(self[], offset)
proc cQMenuBar_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQMenuBar): gen_qpainter_types.QPainter {.base.} =
  QMenuBarsharedPainter(self[])
proc cQMenuBar_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQMenuBar, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QMenuBarinputMethodEvent(self[], param1)
proc cQMenuBar_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQMenuBar, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QMenuBarinputMethodQuery(self[], param1)
proc cQMenuBar_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQMenuBar, next: bool): bool {.base.} =
  QMenuBarfocusNextPrevChild(self[], next)
proc cQMenuBar_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method childEvent*(self: VirtualQMenuBar, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QMenuBarchildEvent(self[], event)
proc cQMenuBar_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQMenuBar, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QMenuBarcustomEvent(self[], event)
proc cQMenuBar_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQMenuBar, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QMenuBarconnectNotify(self[], signal)
proc cQMenuBar_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQMenuBar, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QMenuBardisconnectNotify(self[], signal)
proc cQMenuBar_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMenuBar](fcQMenuBar_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc initStyleOption*(self: gen_qmenubar_types.QMenuBar, option: gen_qstyleoption_types.QStyleOptionMenuItem, action: gen_qaction_types.QAction): void =
  fcQMenuBar_protectedbase_initStyleOption(self.h, option.h, action.h)

proc updateMicroFocus*(self: gen_qmenubar_types.QMenuBar): void =
  fcQMenuBar_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qmenubar_types.QMenuBar): void =
  fcQMenuBar_protectedbase_create(self.h)

proc destroy*(self: gen_qmenubar_types.QMenuBar): void =
  fcQMenuBar_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qmenubar_types.QMenuBar): bool =
  fcQMenuBar_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qmenubar_types.QMenuBar): bool =
  fcQMenuBar_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qmenubar_types.QMenuBar): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMenuBar_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qmenubar_types.QMenuBar): cint =
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
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMenuBarVTable](fcQMenuBar_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQMenuBar_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQMenuBar_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQMenuBar_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQMenuBar_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQMenuBar_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQMenuBar_vtable_callback_heightForWidth
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQMenuBar_vtable_callback_setVisible
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQMenuBar_vtable_callback_changeEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQMenuBar_vtable_callback_keyPressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQMenuBar_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQMenuBar_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQMenuBar_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQMenuBar_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQMenuBar_vtable_callback_paintEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQMenuBar_vtable_callback_resizeEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQMenuBar_vtable_callback_actionEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQMenuBar_vtable_callback_focusOutEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQMenuBar_vtable_callback_focusInEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQMenuBar_vtable_callback_timerEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQMenuBar_vtable_callback_eventFilter
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQMenuBar_vtable_callback_event
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQMenuBar_vtable_callback_devType
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQMenuBar_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQMenuBar_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQMenuBar_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQMenuBar_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQMenuBar_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQMenuBar_vtable_callback_enterEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQMenuBar_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQMenuBar_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQMenuBar_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQMenuBar_vtable_callback_tabletEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQMenuBar_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQMenuBar_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQMenuBar_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQMenuBar_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQMenuBar_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQMenuBar_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQMenuBar_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQMenuBar_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQMenuBar_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQMenuBar_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQMenuBar_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQMenuBar_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQMenuBar_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQMenuBar_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQMenuBar_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQMenuBar_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQMenuBar_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQMenuBar_vtable_callback_disconnectNotify
  gen_qmenubar_types.QMenuBar(h: fcQMenuBar_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qmenubar_types.QMenuBar,
    vtbl: ref QMenuBarVTable = nil): gen_qmenubar_types.QMenuBar =
  let vtbl = if vtbl == nil: new QMenuBarVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMenuBarVTable](fcQMenuBar_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQMenuBar_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQMenuBar_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQMenuBar_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQMenuBar_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQMenuBar_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQMenuBar_vtable_callback_heightForWidth
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQMenuBar_vtable_callback_setVisible
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQMenuBar_vtable_callback_changeEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQMenuBar_vtable_callback_keyPressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQMenuBar_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQMenuBar_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQMenuBar_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQMenuBar_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQMenuBar_vtable_callback_paintEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQMenuBar_vtable_callback_resizeEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQMenuBar_vtable_callback_actionEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQMenuBar_vtable_callback_focusOutEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQMenuBar_vtable_callback_focusInEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQMenuBar_vtable_callback_timerEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQMenuBar_vtable_callback_eventFilter
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQMenuBar_vtable_callback_event
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQMenuBar_vtable_callback_devType
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQMenuBar_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQMenuBar_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQMenuBar_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQMenuBar_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQMenuBar_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQMenuBar_vtable_callback_enterEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQMenuBar_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQMenuBar_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQMenuBar_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQMenuBar_vtable_callback_tabletEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQMenuBar_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQMenuBar_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQMenuBar_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQMenuBar_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQMenuBar_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQMenuBar_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQMenuBar_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQMenuBar_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQMenuBar_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQMenuBar_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQMenuBar_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQMenuBar_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQMenuBar_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQMenuBar_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQMenuBar_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQMenuBar_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQMenuBar_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQMenuBar_vtable_callback_disconnectNotify
  gen_qmenubar_types.QMenuBar(h: fcQMenuBar_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQMenuBar_mvtbl = cQMenuBarVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQMenuBar()[])](self.fcQMenuBar_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQMenuBar_method_callback_metaObject,
  metacast: cQMenuBar_method_callback_metacast,
  metacall: cQMenuBar_method_callback_metacall,
  sizeHint: cQMenuBar_method_callback_sizeHint,
  minimumSizeHint: cQMenuBar_method_callback_minimumSizeHint,
  heightForWidth: cQMenuBar_method_callback_heightForWidth,
  setVisible: cQMenuBar_method_callback_setVisible,
  changeEvent: cQMenuBar_method_callback_changeEvent,
  keyPressEvent: cQMenuBar_method_callback_keyPressEvent,
  mouseReleaseEvent: cQMenuBar_method_callback_mouseReleaseEvent,
  mousePressEvent: cQMenuBar_method_callback_mousePressEvent,
  mouseMoveEvent: cQMenuBar_method_callback_mouseMoveEvent,
  leaveEvent: cQMenuBar_method_callback_leaveEvent,
  paintEvent: cQMenuBar_method_callback_paintEvent,
  resizeEvent: cQMenuBar_method_callback_resizeEvent,
  actionEvent: cQMenuBar_method_callback_actionEvent,
  focusOutEvent: cQMenuBar_method_callback_focusOutEvent,
  focusInEvent: cQMenuBar_method_callback_focusInEvent,
  timerEvent: cQMenuBar_method_callback_timerEvent,
  eventFilter: cQMenuBar_method_callback_eventFilter,
  event: cQMenuBar_method_callback_event,
  devType: cQMenuBar_method_callback_devType,
  hasHeightForWidth: cQMenuBar_method_callback_hasHeightForWidth,
  paintEngine: cQMenuBar_method_callback_paintEngine,
  mouseDoubleClickEvent: cQMenuBar_method_callback_mouseDoubleClickEvent,
  wheelEvent: cQMenuBar_method_callback_wheelEvent,
  keyReleaseEvent: cQMenuBar_method_callback_keyReleaseEvent,
  enterEvent: cQMenuBar_method_callback_enterEvent,
  moveEvent: cQMenuBar_method_callback_moveEvent,
  closeEvent: cQMenuBar_method_callback_closeEvent,
  contextMenuEvent: cQMenuBar_method_callback_contextMenuEvent,
  tabletEvent: cQMenuBar_method_callback_tabletEvent,
  dragEnterEvent: cQMenuBar_method_callback_dragEnterEvent,
  dragMoveEvent: cQMenuBar_method_callback_dragMoveEvent,
  dragLeaveEvent: cQMenuBar_method_callback_dragLeaveEvent,
  dropEvent: cQMenuBar_method_callback_dropEvent,
  showEvent: cQMenuBar_method_callback_showEvent,
  hideEvent: cQMenuBar_method_callback_hideEvent,
  nativeEvent: cQMenuBar_method_callback_nativeEvent,
  metric: cQMenuBar_method_callback_metric,
  initPainter: cQMenuBar_method_callback_initPainter,
  redirected: cQMenuBar_method_callback_redirected,
  sharedPainter: cQMenuBar_method_callback_sharedPainter,
  inputMethodEvent: cQMenuBar_method_callback_inputMethodEvent,
  inputMethodQuery: cQMenuBar_method_callback_inputMethodQuery,
  focusNextPrevChild: cQMenuBar_method_callback_focusNextPrevChild,
  childEvent: cQMenuBar_method_callback_childEvent,
  customEvent: cQMenuBar_method_callback_customEvent,
  connectNotify: cQMenuBar_method_callback_connectNotify,
  disconnectNotify: cQMenuBar_method_callback_disconnectNotify,
)
proc create*(T: type gen_qmenubar_types.QMenuBar,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQMenuBar) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMenuBar_new(addr(cQMenuBar_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qmenubar_types.QMenuBar,
    inst: VirtualQMenuBar) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMenuBar_new2(addr(cQMenuBar_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qmenubar_types.QMenuBar): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMenuBar_staticMetaObject())
