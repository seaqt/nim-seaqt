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

type cQMenu*{.exportc: "QMenu", incompleteStruct.} = object

proc fcQMenu_new(parent: pointer): ptr cQMenu {.importc: "QMenu_new".}
proc fcQMenu_new2(): ptr cQMenu {.importc: "QMenu_new2".}
proc fcQMenu_new3(title: struct_miqt_string): ptr cQMenu {.importc: "QMenu_new3".}
proc fcQMenu_new4(title: struct_miqt_string, parent: pointer): ptr cQMenu {.importc: "QMenu_new4".}
proc fcQMenu_metaObject(self: pointer, ): pointer {.importc: "QMenu_metaObject".}
proc fcQMenu_metacast(self: pointer, param1: cstring): pointer {.importc: "QMenu_metacast".}
proc fcQMenu_tr(s: cstring): struct_miqt_string {.importc: "QMenu_tr".}
proc fcQMenu_trUtf8(s: cstring): struct_miqt_string {.importc: "QMenu_trUtf8".}
proc fcQMenu_addAction(self: pointer, text: struct_miqt_string): pointer {.importc: "QMenu_addAction".}
proc fcQMenu_addAction2(self: pointer, icon: pointer, text: struct_miqt_string): pointer {.importc: "QMenu_addAction2".}
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
proc fcQMenu_connect_aboutToShow(self: pointer, slot: int) {.importc: "QMenu_connect_aboutToShow".}
proc fcQMenu_aboutToHide(self: pointer, ): void {.importc: "QMenu_aboutToHide".}
proc fcQMenu_connect_aboutToHide(self: pointer, slot: int) {.importc: "QMenu_connect_aboutToHide".}
proc fcQMenu_triggered(self: pointer, action: pointer): void {.importc: "QMenu_triggered".}
proc fcQMenu_connect_triggered(self: pointer, slot: int) {.importc: "QMenu_connect_triggered".}
proc fcQMenu_hovered(self: pointer, action: pointer): void {.importc: "QMenu_hovered".}
proc fcQMenu_connect_hovered(self: pointer, slot: int) {.importc: "QMenu_connect_hovered".}
proc fcQMenu_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMenu_tr2".}
proc fcQMenu_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMenu_tr3".}
proc fcQMenu_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMenu_trUtf82".}
proc fcQMenu_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMenu_trUtf83".}
proc fcQMenu_popup2(self: pointer, pos: pointer, at: pointer): void {.importc: "QMenu_popup2".}
proc fcQMenu_exec22(self: pointer, pos: pointer, at: pointer): pointer {.importc: "QMenu_exec22".}
proc fcQMenu_exec3(actions: struct_miqt_array, pos: pointer, at: pointer): pointer {.importc: "QMenu_exec3".}
proc fcQMenu_exec4(actions: struct_miqt_array, pos: pointer, at: pointer, parent: pointer): pointer {.importc: "QMenu_exec4".}
proc fQMenu_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QMenu_virtualbase_sizeHint".}
proc fcQMenu_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QMenu_override_virtual_sizeHint".}
proc fQMenu_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QMenu_virtualbase_changeEvent".}
proc fcQMenu_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_changeEvent".}
proc fQMenu_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QMenu_virtualbase_keyPressEvent".}
proc fcQMenu_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_keyPressEvent".}
proc fQMenu_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void{.importc: "QMenu_virtualbase_mouseReleaseEvent".}
proc fcQMenu_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_mouseReleaseEvent".}
proc fQMenu_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QMenu_virtualbase_mousePressEvent".}
proc fcQMenu_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_mousePressEvent".}
proc fQMenu_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QMenu_virtualbase_mouseMoveEvent".}
proc fcQMenu_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_mouseMoveEvent".}
proc fQMenu_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QMenu_virtualbase_wheelEvent".}
proc fcQMenu_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_wheelEvent".}
proc fQMenu_virtualbase_enterEvent(self: pointer, param1: pointer): void{.importc: "QMenu_virtualbase_enterEvent".}
proc fcQMenu_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_enterEvent".}
proc fQMenu_virtualbase_leaveEvent(self: pointer, param1: pointer): void{.importc: "QMenu_virtualbase_leaveEvent".}
proc fcQMenu_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_leaveEvent".}
proc fQMenu_virtualbase_hideEvent(self: pointer, param1: pointer): void{.importc: "QMenu_virtualbase_hideEvent".}
proc fcQMenu_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_hideEvent".}
proc fQMenu_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QMenu_virtualbase_paintEvent".}
proc fcQMenu_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_paintEvent".}
proc fQMenu_virtualbase_actionEvent(self: pointer, param1: pointer): void{.importc: "QMenu_virtualbase_actionEvent".}
proc fcQMenu_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_actionEvent".}
proc fQMenu_virtualbase_timerEvent(self: pointer, param1: pointer): void{.importc: "QMenu_virtualbase_timerEvent".}
proc fcQMenu_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_timerEvent".}
proc fQMenu_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QMenu_virtualbase_event".}
proc fcQMenu_override_virtual_event(self: pointer, slot: int) {.importc: "QMenu_override_virtual_event".}
proc fQMenu_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QMenu_virtualbase_focusNextPrevChild".}
proc fcQMenu_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QMenu_override_virtual_focusNextPrevChild".}
proc fQMenu_virtualbase_devType(self: pointer, ): cint{.importc: "QMenu_virtualbase_devType".}
proc fcQMenu_override_virtual_devType(self: pointer, slot: int) {.importc: "QMenu_override_virtual_devType".}
proc fQMenu_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QMenu_virtualbase_setVisible".}
proc fcQMenu_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QMenu_override_virtual_setVisible".}
proc fQMenu_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QMenu_virtualbase_minimumSizeHint".}
proc fcQMenu_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QMenu_override_virtual_minimumSizeHint".}
proc fQMenu_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QMenu_virtualbase_heightForWidth".}
proc fcQMenu_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QMenu_override_virtual_heightForWidth".}
proc fQMenu_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QMenu_virtualbase_hasHeightForWidth".}
proc fcQMenu_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QMenu_override_virtual_hasHeightForWidth".}
proc fQMenu_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QMenu_virtualbase_paintEngine".}
proc fcQMenu_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QMenu_override_virtual_paintEngine".}
proc fQMenu_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QMenu_virtualbase_mouseDoubleClickEvent".}
proc fcQMenu_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_mouseDoubleClickEvent".}
proc fQMenu_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QMenu_virtualbase_keyReleaseEvent".}
proc fcQMenu_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_keyReleaseEvent".}
proc fQMenu_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QMenu_virtualbase_focusInEvent".}
proc fcQMenu_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_focusInEvent".}
proc fQMenu_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QMenu_virtualbase_focusOutEvent".}
proc fcQMenu_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_focusOutEvent".}
proc fQMenu_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QMenu_virtualbase_moveEvent".}
proc fcQMenu_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_moveEvent".}
proc fQMenu_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QMenu_virtualbase_resizeEvent".}
proc fcQMenu_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_resizeEvent".}
proc fQMenu_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QMenu_virtualbase_closeEvent".}
proc fcQMenu_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_closeEvent".}
proc fQMenu_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QMenu_virtualbase_contextMenuEvent".}
proc fcQMenu_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_contextMenuEvent".}
proc fQMenu_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QMenu_virtualbase_tabletEvent".}
proc fcQMenu_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_tabletEvent".}
proc fQMenu_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QMenu_virtualbase_dragEnterEvent".}
proc fcQMenu_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_dragEnterEvent".}
proc fQMenu_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QMenu_virtualbase_dragMoveEvent".}
proc fcQMenu_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_dragMoveEvent".}
proc fQMenu_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QMenu_virtualbase_dragLeaveEvent".}
proc fcQMenu_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_dragLeaveEvent".}
proc fQMenu_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QMenu_virtualbase_dropEvent".}
proc fcQMenu_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_dropEvent".}
proc fQMenu_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QMenu_virtualbase_showEvent".}
proc fcQMenu_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_showEvent".}
proc fQMenu_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QMenu_virtualbase_nativeEvent".}
proc fcQMenu_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_nativeEvent".}
proc fQMenu_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QMenu_virtualbase_metric".}
proc fcQMenu_override_virtual_metric(self: pointer, slot: int) {.importc: "QMenu_override_virtual_metric".}
proc fQMenu_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QMenu_virtualbase_initPainter".}
proc fcQMenu_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QMenu_override_virtual_initPainter".}
proc fQMenu_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QMenu_virtualbase_redirected".}
proc fcQMenu_override_virtual_redirected(self: pointer, slot: int) {.importc: "QMenu_override_virtual_redirected".}
proc fQMenu_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QMenu_virtualbase_sharedPainter".}
proc fcQMenu_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QMenu_override_virtual_sharedPainter".}
proc fQMenu_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QMenu_virtualbase_inputMethodEvent".}
proc fcQMenu_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_inputMethodEvent".}
proc fQMenu_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QMenu_virtualbase_inputMethodQuery".}
proc fcQMenu_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QMenu_override_virtual_inputMethodQuery".}
proc fQMenu_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QMenu_virtualbase_eventFilter".}
proc fcQMenu_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QMenu_override_virtual_eventFilter".}
proc fQMenu_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QMenu_virtualbase_childEvent".}
proc fcQMenu_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_childEvent".}
proc fQMenu_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QMenu_virtualbase_customEvent".}
proc fcQMenu_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_customEvent".}
proc fQMenu_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QMenu_virtualbase_connectNotify".}
proc fcQMenu_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QMenu_override_virtual_connectNotify".}
proc fQMenu_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QMenu_virtualbase_disconnectNotify".}
proc fcQMenu_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QMenu_override_virtual_disconnectNotify".}
proc fcQMenu_delete(self: pointer) {.importc: "QMenu_delete".}


func init*(T: type gen_qmenu_types.QMenu, h: ptr cQMenu): gen_qmenu_types.QMenu =
  T(h: h)
proc create*(T: type gen_qmenu_types.QMenu, parent: gen_qwidget_types.QWidget): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu.init(fcQMenu_new(parent.h))

proc create*(T: type gen_qmenu_types.QMenu, ): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu.init(fcQMenu_new2())

proc create*(T: type gen_qmenu_types.QMenu, title: string): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu.init(fcQMenu_new3(struct_miqt_string(data: title, len: csize_t(len(title)))))

proc create*(T: type gen_qmenu_types.QMenu, title: string, parent: gen_qwidget_types.QWidget): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu.init(fcQMenu_new4(struct_miqt_string(data: title, len: csize_t(len(title))), parent.h))

proc metaObject*(self: gen_qmenu_types.QMenu, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMenu_metaObject(self.h))

proc metacast*(self: gen_qmenu_types.QMenu, param1: cstring): pointer =
  fcQMenu_metacast(self.h, param1)

proc tr*(_: type gen_qmenu_types.QMenu, s: cstring): string =
  let v_ms = fcQMenu_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmenu_types.QMenu, s: cstring): string =
  let v_ms = fcQMenu_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addAction*(self: gen_qmenu_types.QMenu, text: string): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenu_addAction(self.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc addAction*(self: gen_qmenu_types.QMenu, icon: gen_qicon_types.QIcon, text: string): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenu_addAction2(self.h, icon.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

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
proc miqt_exec_callback_QMenu_aboutToShow(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QMenuaboutToShowSlot](cast[pointer](slot))
  nimfunc[]()

proc onaboutToShow*(self: gen_qmenu_types.QMenu, slot: QMenuaboutToShowSlot) =
  var tmp = new QMenuaboutToShowSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_connect_aboutToShow(self.h, cast[int](addr tmp[]))

proc aboutToHide*(self: gen_qmenu_types.QMenu, ): void =
  fcQMenu_aboutToHide(self.h)

type QMenuaboutToHideSlot* = proc()
proc miqt_exec_callback_QMenu_aboutToHide(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QMenuaboutToHideSlot](cast[pointer](slot))
  nimfunc[]()

proc onaboutToHide*(self: gen_qmenu_types.QMenu, slot: QMenuaboutToHideSlot) =
  var tmp = new QMenuaboutToHideSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_connect_aboutToHide(self.h, cast[int](addr tmp[]))

proc triggered*(self: gen_qmenu_types.QMenu, action: gen_qaction_types.QAction): void =
  fcQMenu_triggered(self.h, action.h)

type QMenutriggeredSlot* = proc(action: gen_qaction_types.QAction)
proc miqt_exec_callback_QMenu_triggered(slot: int, action: pointer) {.exportc.} =
  let nimfunc = cast[ptr QMenutriggeredSlot](cast[pointer](slot))
  let slotval1 = gen_qaction_types.QAction(h: action)

  nimfunc[](slotval1)

proc ontriggered*(self: gen_qmenu_types.QMenu, slot: QMenutriggeredSlot) =
  var tmp = new QMenutriggeredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_connect_triggered(self.h, cast[int](addr tmp[]))

proc hovered*(self: gen_qmenu_types.QMenu, action: gen_qaction_types.QAction): void =
  fcQMenu_hovered(self.h, action.h)

type QMenuhoveredSlot* = proc(action: gen_qaction_types.QAction)
proc miqt_exec_callback_QMenu_hovered(slot: int, action: pointer) {.exportc.} =
  let nimfunc = cast[ptr QMenuhoveredSlot](cast[pointer](slot))
  let slotval1 = gen_qaction_types.QAction(h: action)

  nimfunc[](slotval1)

proc onhovered*(self: gen_qmenu_types.QMenu, slot: QMenuhoveredSlot) =
  var tmp = new QMenuhoveredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_connect_hovered(self.h, cast[int](addr tmp[]))

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

proc trUtf8*(_: type gen_qmenu_types.QMenu, s: cstring, c: cstring): string =
  let v_ms = fcQMenu_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmenu_types.QMenu, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMenu_trUtf83(s, c, n)
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

proc QMenusizeHint*(self: gen_qmenu_types.QMenu, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQMenu_virtualbase_sizeHint(self.h))

type QMenusizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qmenu_types.QMenu, slot: QMenusizeHintProc) =
  # TODO check subclass
  var tmp = new QMenusizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_sizeHint(self: ptr cQMenu, slot: int): pointer {.exportc: "miqt_exec_callback_QMenu_sizeHint ".} =
  var nimfunc = cast[ptr QMenusizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMenuchangeEvent*(self: gen_qmenu_types.QMenu, param1: gen_qcoreevent_types.QEvent): void =
  fQMenu_virtualbase_changeEvent(self.h, param1.h)

type QMenuchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qmenu_types.QMenu, slot: QMenuchangeEventProc) =
  # TODO check subclass
  var tmp = new QMenuchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_changeEvent(self: ptr cQMenu, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenu_changeEvent ".} =
  var nimfunc = cast[ptr QMenuchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QMenukeyPressEvent*(self: gen_qmenu_types.QMenu, param1: gen_qevent_types.QKeyEvent): void =
  fQMenu_virtualbase_keyPressEvent(self.h, param1.h)

type QMenukeyPressEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qmenu_types.QMenu, slot: QMenukeyPressEventProc) =
  # TODO check subclass
  var tmp = new QMenukeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_keyPressEvent(self: ptr cQMenu, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenu_keyPressEvent ".} =
  var nimfunc = cast[ptr QMenukeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QMenumouseReleaseEvent*(self: gen_qmenu_types.QMenu, param1: gen_qevent_types.QMouseEvent): void =
  fQMenu_virtualbase_mouseReleaseEvent(self.h, param1.h)

type QMenumouseReleaseEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qmenu_types.QMenu, slot: QMenumouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QMenumouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_mouseReleaseEvent(self: ptr cQMenu, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenu_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QMenumouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QMenumousePressEvent*(self: gen_qmenu_types.QMenu, param1: gen_qevent_types.QMouseEvent): void =
  fQMenu_virtualbase_mousePressEvent(self.h, param1.h)

type QMenumousePressEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qmenu_types.QMenu, slot: QMenumousePressEventProc) =
  # TODO check subclass
  var tmp = new QMenumousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_mousePressEvent(self: ptr cQMenu, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenu_mousePressEvent ".} =
  var nimfunc = cast[ptr QMenumousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QMenumouseMoveEvent*(self: gen_qmenu_types.QMenu, param1: gen_qevent_types.QMouseEvent): void =
  fQMenu_virtualbase_mouseMoveEvent(self.h, param1.h)

type QMenumouseMoveEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qmenu_types.QMenu, slot: QMenumouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QMenumouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_mouseMoveEvent(self: ptr cQMenu, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenu_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QMenumouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QMenuwheelEvent*(self: gen_qmenu_types.QMenu, param1: gen_qevent_types.QWheelEvent): void =
  fQMenu_virtualbase_wheelEvent(self.h, param1.h)

type QMenuwheelEventProc* = proc(param1: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qmenu_types.QMenu, slot: QMenuwheelEventProc) =
  # TODO check subclass
  var tmp = new QMenuwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_wheelEvent(self: ptr cQMenu, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenu_wheelEvent ".} =
  var nimfunc = cast[ptr QMenuwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)


  nimfunc[](slotval1)
proc QMenuenterEvent*(self: gen_qmenu_types.QMenu, param1: gen_qcoreevent_types.QEvent): void =
  fQMenu_virtualbase_enterEvent(self.h, param1.h)

type QMenuenterEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qmenu_types.QMenu, slot: QMenuenterEventProc) =
  # TODO check subclass
  var tmp = new QMenuenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_enterEvent(self: ptr cQMenu, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenu_enterEvent ".} =
  var nimfunc = cast[ptr QMenuenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QMenuleaveEvent*(self: gen_qmenu_types.QMenu, param1: gen_qcoreevent_types.QEvent): void =
  fQMenu_virtualbase_leaveEvent(self.h, param1.h)

type QMenuleaveEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qmenu_types.QMenu, slot: QMenuleaveEventProc) =
  # TODO check subclass
  var tmp = new QMenuleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_leaveEvent(self: ptr cQMenu, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenu_leaveEvent ".} =
  var nimfunc = cast[ptr QMenuleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QMenuhideEvent*(self: gen_qmenu_types.QMenu, param1: gen_qevent_types.QHideEvent): void =
  fQMenu_virtualbase_hideEvent(self.h, param1.h)

type QMenuhideEventProc* = proc(param1: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qmenu_types.QMenu, slot: QMenuhideEventProc) =
  # TODO check subclass
  var tmp = new QMenuhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_hideEvent(self: ptr cQMenu, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenu_hideEvent ".} =
  var nimfunc = cast[ptr QMenuhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: param1)


  nimfunc[](slotval1)
proc QMenupaintEvent*(self: gen_qmenu_types.QMenu, param1: gen_qevent_types.QPaintEvent): void =
  fQMenu_virtualbase_paintEvent(self.h, param1.h)

type QMenupaintEventProc* = proc(param1: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qmenu_types.QMenu, slot: QMenupaintEventProc) =
  # TODO check subclass
  var tmp = new QMenupaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_paintEvent(self: ptr cQMenu, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenu_paintEvent ".} =
  var nimfunc = cast[ptr QMenupaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)


  nimfunc[](slotval1)
proc QMenuactionEvent*(self: gen_qmenu_types.QMenu, param1: gen_qevent_types.QActionEvent): void =
  fQMenu_virtualbase_actionEvent(self.h, param1.h)

type QMenuactionEventProc* = proc(param1: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qmenu_types.QMenu, slot: QMenuactionEventProc) =
  # TODO check subclass
  var tmp = new QMenuactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_actionEvent(self: ptr cQMenu, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenu_actionEvent ".} =
  var nimfunc = cast[ptr QMenuactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: param1)


  nimfunc[](slotval1)
proc QMenutimerEvent*(self: gen_qmenu_types.QMenu, param1: gen_qcoreevent_types.QTimerEvent): void =
  fQMenu_virtualbase_timerEvent(self.h, param1.h)

type QMenutimerEventProc* = proc(param1: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qmenu_types.QMenu, slot: QMenutimerEventProc) =
  # TODO check subclass
  var tmp = new QMenutimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_timerEvent(self: ptr cQMenu, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenu_timerEvent ".} =
  var nimfunc = cast[ptr QMenutimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1)


  nimfunc[](slotval1)
proc QMenuevent*(self: gen_qmenu_types.QMenu, param1: gen_qcoreevent_types.QEvent): bool =
  fQMenu_virtualbase_event(self.h, param1.h)

type QMenueventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qmenu_types.QMenu, slot: QMenueventProc) =
  # TODO check subclass
  var tmp = new QMenueventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_event(self: ptr cQMenu, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QMenu_event ".} =
  var nimfunc = cast[ptr QMenueventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMenufocusNextPrevChild*(self: gen_qmenu_types.QMenu, next: bool): bool =
  fQMenu_virtualbase_focusNextPrevChild(self.h, next)

type QMenufocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qmenu_types.QMenu, slot: QMenufocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QMenufocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_focusNextPrevChild(self: ptr cQMenu, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QMenu_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QMenufocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMenudevType*(self: gen_qmenu_types.QMenu, ): cint =
  fQMenu_virtualbase_devType(self.h)

type QMenudevTypeProc* = proc(): cint
proc ondevType*(self: gen_qmenu_types.QMenu, slot: QMenudevTypeProc) =
  # TODO check subclass
  var tmp = new QMenudevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_devType(self: ptr cQMenu, slot: int): cint {.exportc: "miqt_exec_callback_QMenu_devType ".} =
  var nimfunc = cast[ptr QMenudevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QMenusetVisible*(self: gen_qmenu_types.QMenu, visible: bool): void =
  fQMenu_virtualbase_setVisible(self.h, visible)

type QMenusetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qmenu_types.QMenu, slot: QMenusetVisibleProc) =
  # TODO check subclass
  var tmp = new QMenusetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_setVisible(self: ptr cQMenu, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QMenu_setVisible ".} =
  var nimfunc = cast[ptr QMenusetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QMenuminimumSizeHint*(self: gen_qmenu_types.QMenu, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQMenu_virtualbase_minimumSizeHint(self.h))

type QMenuminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qmenu_types.QMenu, slot: QMenuminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QMenuminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_minimumSizeHint(self: ptr cQMenu, slot: int): pointer {.exportc: "miqt_exec_callback_QMenu_minimumSizeHint ".} =
  var nimfunc = cast[ptr QMenuminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMenuheightForWidth*(self: gen_qmenu_types.QMenu, param1: cint): cint =
  fQMenu_virtualbase_heightForWidth(self.h, param1)

type QMenuheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qmenu_types.QMenu, slot: QMenuheightForWidthProc) =
  # TODO check subclass
  var tmp = new QMenuheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_heightForWidth(self: ptr cQMenu, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QMenu_heightForWidth ".} =
  var nimfunc = cast[ptr QMenuheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMenuhasHeightForWidth*(self: gen_qmenu_types.QMenu, ): bool =
  fQMenu_virtualbase_hasHeightForWidth(self.h)

type QMenuhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qmenu_types.QMenu, slot: QMenuhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QMenuhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_hasHeightForWidth(self: ptr cQMenu, slot: int): bool {.exportc: "miqt_exec_callback_QMenu_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QMenuhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QMenupaintEngine*(self: gen_qmenu_types.QMenu, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQMenu_virtualbase_paintEngine(self.h))

type QMenupaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qmenu_types.QMenu, slot: QMenupaintEngineProc) =
  # TODO check subclass
  var tmp = new QMenupaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_paintEngine(self: ptr cQMenu, slot: int): pointer {.exportc: "miqt_exec_callback_QMenu_paintEngine ".} =
  var nimfunc = cast[ptr QMenupaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMenumouseDoubleClickEvent*(self: gen_qmenu_types.QMenu, event: gen_qevent_types.QMouseEvent): void =
  fQMenu_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QMenumouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qmenu_types.QMenu, slot: QMenumouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QMenumouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_mouseDoubleClickEvent(self: ptr cQMenu, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenu_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QMenumouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QMenukeyReleaseEvent*(self: gen_qmenu_types.QMenu, event: gen_qevent_types.QKeyEvent): void =
  fQMenu_virtualbase_keyReleaseEvent(self.h, event.h)

type QMenukeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qmenu_types.QMenu, slot: QMenukeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QMenukeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_keyReleaseEvent(self: ptr cQMenu, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenu_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QMenukeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QMenufocusInEvent*(self: gen_qmenu_types.QMenu, event: gen_qevent_types.QFocusEvent): void =
  fQMenu_virtualbase_focusInEvent(self.h, event.h)

type QMenufocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qmenu_types.QMenu, slot: QMenufocusInEventProc) =
  # TODO check subclass
  var tmp = new QMenufocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_focusInEvent(self: ptr cQMenu, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenu_focusInEvent ".} =
  var nimfunc = cast[ptr QMenufocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QMenufocusOutEvent*(self: gen_qmenu_types.QMenu, event: gen_qevent_types.QFocusEvent): void =
  fQMenu_virtualbase_focusOutEvent(self.h, event.h)

type QMenufocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qmenu_types.QMenu, slot: QMenufocusOutEventProc) =
  # TODO check subclass
  var tmp = new QMenufocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_focusOutEvent(self: ptr cQMenu, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenu_focusOutEvent ".} =
  var nimfunc = cast[ptr QMenufocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QMenumoveEvent*(self: gen_qmenu_types.QMenu, event: gen_qevent_types.QMoveEvent): void =
  fQMenu_virtualbase_moveEvent(self.h, event.h)

type QMenumoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qmenu_types.QMenu, slot: QMenumoveEventProc) =
  # TODO check subclass
  var tmp = new QMenumoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_moveEvent(self: ptr cQMenu, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenu_moveEvent ".} =
  var nimfunc = cast[ptr QMenumoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QMenuresizeEvent*(self: gen_qmenu_types.QMenu, event: gen_qevent_types.QResizeEvent): void =
  fQMenu_virtualbase_resizeEvent(self.h, event.h)

type QMenuresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qmenu_types.QMenu, slot: QMenuresizeEventProc) =
  # TODO check subclass
  var tmp = new QMenuresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_resizeEvent(self: ptr cQMenu, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenu_resizeEvent ".} =
  var nimfunc = cast[ptr QMenuresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QMenucloseEvent*(self: gen_qmenu_types.QMenu, event: gen_qevent_types.QCloseEvent): void =
  fQMenu_virtualbase_closeEvent(self.h, event.h)

type QMenucloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qmenu_types.QMenu, slot: QMenucloseEventProc) =
  # TODO check subclass
  var tmp = new QMenucloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_closeEvent(self: ptr cQMenu, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenu_closeEvent ".} =
  var nimfunc = cast[ptr QMenucloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QMenucontextMenuEvent*(self: gen_qmenu_types.QMenu, event: gen_qevent_types.QContextMenuEvent): void =
  fQMenu_virtualbase_contextMenuEvent(self.h, event.h)

type QMenucontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qmenu_types.QMenu, slot: QMenucontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QMenucontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_contextMenuEvent(self: ptr cQMenu, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenu_contextMenuEvent ".} =
  var nimfunc = cast[ptr QMenucontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QMenutabletEvent*(self: gen_qmenu_types.QMenu, event: gen_qevent_types.QTabletEvent): void =
  fQMenu_virtualbase_tabletEvent(self.h, event.h)

type QMenutabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qmenu_types.QMenu, slot: QMenutabletEventProc) =
  # TODO check subclass
  var tmp = new QMenutabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_tabletEvent(self: ptr cQMenu, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenu_tabletEvent ".} =
  var nimfunc = cast[ptr QMenutabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QMenudragEnterEvent*(self: gen_qmenu_types.QMenu, event: gen_qevent_types.QDragEnterEvent): void =
  fQMenu_virtualbase_dragEnterEvent(self.h, event.h)

type QMenudragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qmenu_types.QMenu, slot: QMenudragEnterEventProc) =
  # TODO check subclass
  var tmp = new QMenudragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_dragEnterEvent(self: ptr cQMenu, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenu_dragEnterEvent ".} =
  var nimfunc = cast[ptr QMenudragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QMenudragMoveEvent*(self: gen_qmenu_types.QMenu, event: gen_qevent_types.QDragMoveEvent): void =
  fQMenu_virtualbase_dragMoveEvent(self.h, event.h)

type QMenudragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qmenu_types.QMenu, slot: QMenudragMoveEventProc) =
  # TODO check subclass
  var tmp = new QMenudragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_dragMoveEvent(self: ptr cQMenu, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenu_dragMoveEvent ".} =
  var nimfunc = cast[ptr QMenudragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QMenudragLeaveEvent*(self: gen_qmenu_types.QMenu, event: gen_qevent_types.QDragLeaveEvent): void =
  fQMenu_virtualbase_dragLeaveEvent(self.h, event.h)

type QMenudragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qmenu_types.QMenu, slot: QMenudragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QMenudragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_dragLeaveEvent(self: ptr cQMenu, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenu_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QMenudragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QMenudropEvent*(self: gen_qmenu_types.QMenu, event: gen_qevent_types.QDropEvent): void =
  fQMenu_virtualbase_dropEvent(self.h, event.h)

type QMenudropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qmenu_types.QMenu, slot: QMenudropEventProc) =
  # TODO check subclass
  var tmp = new QMenudropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_dropEvent(self: ptr cQMenu, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenu_dropEvent ".} =
  var nimfunc = cast[ptr QMenudropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QMenushowEvent*(self: gen_qmenu_types.QMenu, event: gen_qevent_types.QShowEvent): void =
  fQMenu_virtualbase_showEvent(self.h, event.h)

type QMenushowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qmenu_types.QMenu, slot: QMenushowEventProc) =
  # TODO check subclass
  var tmp = new QMenushowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_showEvent(self: ptr cQMenu, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenu_showEvent ".} =
  var nimfunc = cast[ptr QMenushowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QMenunativeEvent*(self: gen_qmenu_types.QMenu, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQMenu_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QMenunativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qmenu_types.QMenu, slot: QMenunativeEventProc) =
  # TODO check subclass
  var tmp = new QMenunativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_nativeEvent(self: ptr cQMenu, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QMenu_nativeEvent ".} =
  var nimfunc = cast[ptr QMenunativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QMenumetric*(self: gen_qmenu_types.QMenu, param1: cint): cint =
  fQMenu_virtualbase_metric(self.h, cint(param1))

type QMenumetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qmenu_types.QMenu, slot: QMenumetricProc) =
  # TODO check subclass
  var tmp = new QMenumetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_metric(self: ptr cQMenu, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QMenu_metric ".} =
  var nimfunc = cast[ptr QMenumetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMenuinitPainter*(self: gen_qmenu_types.QMenu, painter: gen_qpainter_types.QPainter): void =
  fQMenu_virtualbase_initPainter(self.h, painter.h)

type QMenuinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qmenu_types.QMenu, slot: QMenuinitPainterProc) =
  # TODO check subclass
  var tmp = new QMenuinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_initPainter(self: ptr cQMenu, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QMenu_initPainter ".} =
  var nimfunc = cast[ptr QMenuinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QMenuredirected*(self: gen_qmenu_types.QMenu, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQMenu_virtualbase_redirected(self.h, offset.h))

type QMenuredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qmenu_types.QMenu, slot: QMenuredirectedProc) =
  # TODO check subclass
  var tmp = new QMenuredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_redirected(self: ptr cQMenu, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QMenu_redirected ".} =
  var nimfunc = cast[ptr QMenuredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QMenusharedPainter*(self: gen_qmenu_types.QMenu, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQMenu_virtualbase_sharedPainter(self.h))

type QMenusharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qmenu_types.QMenu, slot: QMenusharedPainterProc) =
  # TODO check subclass
  var tmp = new QMenusharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_sharedPainter(self: ptr cQMenu, slot: int): pointer {.exportc: "miqt_exec_callback_QMenu_sharedPainter ".} =
  var nimfunc = cast[ptr QMenusharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMenuinputMethodEvent*(self: gen_qmenu_types.QMenu, param1: gen_qevent_types.QInputMethodEvent): void =
  fQMenu_virtualbase_inputMethodEvent(self.h, param1.h)

type QMenuinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qmenu_types.QMenu, slot: QMenuinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QMenuinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_inputMethodEvent(self: ptr cQMenu, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenu_inputMethodEvent ".} =
  var nimfunc = cast[ptr QMenuinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QMenuinputMethodQuery*(self: gen_qmenu_types.QMenu, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQMenu_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QMenuinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qmenu_types.QMenu, slot: QMenuinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QMenuinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_inputMethodQuery(self: ptr cQMenu, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QMenu_inputMethodQuery ".} =
  var nimfunc = cast[ptr QMenuinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QMenueventFilter*(self: gen_qmenu_types.QMenu, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQMenu_virtualbase_eventFilter(self.h, watched.h, event.h)

type QMenueventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qmenu_types.QMenu, slot: QMenueventFilterProc) =
  # TODO check subclass
  var tmp = new QMenueventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_eventFilter(self: ptr cQMenu, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QMenu_eventFilter ".} =
  var nimfunc = cast[ptr QMenueventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QMenuchildEvent*(self: gen_qmenu_types.QMenu, event: gen_qcoreevent_types.QChildEvent): void =
  fQMenu_virtualbase_childEvent(self.h, event.h)

type QMenuchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qmenu_types.QMenu, slot: QMenuchildEventProc) =
  # TODO check subclass
  var tmp = new QMenuchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_childEvent(self: ptr cQMenu, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenu_childEvent ".} =
  var nimfunc = cast[ptr QMenuchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QMenucustomEvent*(self: gen_qmenu_types.QMenu, event: gen_qcoreevent_types.QEvent): void =
  fQMenu_virtualbase_customEvent(self.h, event.h)

type QMenucustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qmenu_types.QMenu, slot: QMenucustomEventProc) =
  # TODO check subclass
  var tmp = new QMenucustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_customEvent(self: ptr cQMenu, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenu_customEvent ".} =
  var nimfunc = cast[ptr QMenucustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QMenuconnectNotify*(self: gen_qmenu_types.QMenu, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQMenu_virtualbase_connectNotify(self.h, signal.h)

type QMenuconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qmenu_types.QMenu, slot: QMenuconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QMenuconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_connectNotify(self: ptr cQMenu, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMenu_connectNotify ".} =
  var nimfunc = cast[ptr QMenuconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QMenudisconnectNotify*(self: gen_qmenu_types.QMenu, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQMenu_virtualbase_disconnectNotify(self.h, signal.h)

type QMenudisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qmenu_types.QMenu, slot: QMenudisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QMenudisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_disconnectNotify(self: ptr cQMenu, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMenu_disconnectNotify ".} =
  var nimfunc = cast[ptr QMenudisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qmenu_types.QMenu) =
  fcQMenu_delete(self.h)
