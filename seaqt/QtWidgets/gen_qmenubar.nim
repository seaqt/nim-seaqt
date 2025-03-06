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
  ../QtGui/gen_qaction_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qicon_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
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
  gen_qaction_types,
  gen_qevent_types,
  gen_qicon_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qmenu_types,
  gen_qstyleoption_types,
  gen_qwidget

type cQMenuBar*{.exportc: "QMenuBar", incompleteStruct.} = object

proc fcQMenuBar_new(parent: pointer): ptr cQMenuBar {.importc: "QMenuBar_new".}
proc fcQMenuBar_new2(): ptr cQMenuBar {.importc: "QMenuBar_new2".}
proc fcQMenuBar_metaObject(self: pointer, ): pointer {.importc: "QMenuBar_metaObject".}
proc fcQMenuBar_metacast(self: pointer, param1: cstring): pointer {.importc: "QMenuBar_metacast".}
proc fcQMenuBar_tr(s: cstring): struct_miqt_string {.importc: "QMenuBar_tr".}
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
proc fcQMenuBar_connect_triggered(self: pointer, slot: int) {.importc: "QMenuBar_connect_triggered".}
proc fcQMenuBar_hovered(self: pointer, action: pointer): void {.importc: "QMenuBar_hovered".}
proc fcQMenuBar_connect_hovered(self: pointer, slot: int) {.importc: "QMenuBar_connect_hovered".}
proc fcQMenuBar_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMenuBar_tr2".}
proc fcQMenuBar_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMenuBar_tr3".}
proc fcQMenuBar_setCornerWidget2(self: pointer, w: pointer, corner: cint): void {.importc: "QMenuBar_setCornerWidget2".}
proc fcQMenuBar_cornerWidget1(self: pointer, corner: cint): pointer {.importc: "QMenuBar_cornerWidget1".}
proc fQMenuBar_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QMenuBar_virtualbase_sizeHint".}
proc fcQMenuBar_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_sizeHint".}
proc fQMenuBar_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QMenuBar_virtualbase_minimumSizeHint".}
proc fcQMenuBar_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_minimumSizeHint".}
proc fQMenuBar_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QMenuBar_virtualbase_heightForWidth".}
proc fcQMenuBar_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_heightForWidth".}
proc fQMenuBar_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QMenuBar_virtualbase_setVisible".}
proc fcQMenuBar_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_setVisible".}
proc fQMenuBar_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QMenuBar_virtualbase_changeEvent".}
proc fcQMenuBar_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_changeEvent".}
proc fQMenuBar_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QMenuBar_virtualbase_keyPressEvent".}
proc fcQMenuBar_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_keyPressEvent".}
proc fQMenuBar_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void{.importc: "QMenuBar_virtualbase_mouseReleaseEvent".}
proc fcQMenuBar_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_mouseReleaseEvent".}
proc fQMenuBar_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QMenuBar_virtualbase_mousePressEvent".}
proc fcQMenuBar_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_mousePressEvent".}
proc fQMenuBar_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QMenuBar_virtualbase_mouseMoveEvent".}
proc fcQMenuBar_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_mouseMoveEvent".}
proc fQMenuBar_virtualbase_leaveEvent(self: pointer, param1: pointer): void{.importc: "QMenuBar_virtualbase_leaveEvent".}
proc fcQMenuBar_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_leaveEvent".}
proc fQMenuBar_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QMenuBar_virtualbase_paintEvent".}
proc fcQMenuBar_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_paintEvent".}
proc fQMenuBar_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QMenuBar_virtualbase_resizeEvent".}
proc fcQMenuBar_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_resizeEvent".}
proc fQMenuBar_virtualbase_actionEvent(self: pointer, param1: pointer): void{.importc: "QMenuBar_virtualbase_actionEvent".}
proc fcQMenuBar_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_actionEvent".}
proc fQMenuBar_virtualbase_focusOutEvent(self: pointer, param1: pointer): void{.importc: "QMenuBar_virtualbase_focusOutEvent".}
proc fcQMenuBar_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_focusOutEvent".}
proc fQMenuBar_virtualbase_focusInEvent(self: pointer, param1: pointer): void{.importc: "QMenuBar_virtualbase_focusInEvent".}
proc fcQMenuBar_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_focusInEvent".}
proc fQMenuBar_virtualbase_timerEvent(self: pointer, param1: pointer): void{.importc: "QMenuBar_virtualbase_timerEvent".}
proc fcQMenuBar_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_timerEvent".}
proc fQMenuBar_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QMenuBar_virtualbase_eventFilter".}
proc fcQMenuBar_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_eventFilter".}
proc fQMenuBar_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QMenuBar_virtualbase_event".}
proc fcQMenuBar_override_virtual_event(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_event".}
proc fQMenuBar_virtualbase_initStyleOption(self: pointer, option: pointer, action: pointer): void{.importc: "QMenuBar_virtualbase_initStyleOption".}
proc fcQMenuBar_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_initStyleOption".}
proc fQMenuBar_virtualbase_devType(self: pointer, ): cint{.importc: "QMenuBar_virtualbase_devType".}
proc fcQMenuBar_override_virtual_devType(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_devType".}
proc fQMenuBar_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QMenuBar_virtualbase_hasHeightForWidth".}
proc fcQMenuBar_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_hasHeightForWidth".}
proc fQMenuBar_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QMenuBar_virtualbase_paintEngine".}
proc fcQMenuBar_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_paintEngine".}
proc fQMenuBar_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QMenuBar_virtualbase_mouseDoubleClickEvent".}
proc fcQMenuBar_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_mouseDoubleClickEvent".}
proc fQMenuBar_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QMenuBar_virtualbase_wheelEvent".}
proc fcQMenuBar_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_wheelEvent".}
proc fQMenuBar_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QMenuBar_virtualbase_keyReleaseEvent".}
proc fcQMenuBar_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_keyReleaseEvent".}
proc fQMenuBar_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QMenuBar_virtualbase_enterEvent".}
proc fcQMenuBar_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_enterEvent".}
proc fQMenuBar_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QMenuBar_virtualbase_moveEvent".}
proc fcQMenuBar_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_moveEvent".}
proc fQMenuBar_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QMenuBar_virtualbase_closeEvent".}
proc fcQMenuBar_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_closeEvent".}
proc fQMenuBar_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QMenuBar_virtualbase_contextMenuEvent".}
proc fcQMenuBar_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_contextMenuEvent".}
proc fQMenuBar_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QMenuBar_virtualbase_tabletEvent".}
proc fcQMenuBar_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_tabletEvent".}
proc fQMenuBar_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QMenuBar_virtualbase_dragEnterEvent".}
proc fcQMenuBar_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_dragEnterEvent".}
proc fQMenuBar_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QMenuBar_virtualbase_dragMoveEvent".}
proc fcQMenuBar_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_dragMoveEvent".}
proc fQMenuBar_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QMenuBar_virtualbase_dragLeaveEvent".}
proc fcQMenuBar_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_dragLeaveEvent".}
proc fQMenuBar_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QMenuBar_virtualbase_dropEvent".}
proc fcQMenuBar_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_dropEvent".}
proc fQMenuBar_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QMenuBar_virtualbase_showEvent".}
proc fcQMenuBar_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_showEvent".}
proc fQMenuBar_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QMenuBar_virtualbase_hideEvent".}
proc fcQMenuBar_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_hideEvent".}
proc fQMenuBar_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QMenuBar_virtualbase_nativeEvent".}
proc fcQMenuBar_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_nativeEvent".}
proc fQMenuBar_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QMenuBar_virtualbase_metric".}
proc fcQMenuBar_override_virtual_metric(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_metric".}
proc fQMenuBar_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QMenuBar_virtualbase_initPainter".}
proc fcQMenuBar_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_initPainter".}
proc fQMenuBar_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QMenuBar_virtualbase_redirected".}
proc fcQMenuBar_override_virtual_redirected(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_redirected".}
proc fQMenuBar_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QMenuBar_virtualbase_sharedPainter".}
proc fcQMenuBar_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_sharedPainter".}
proc fQMenuBar_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QMenuBar_virtualbase_inputMethodEvent".}
proc fcQMenuBar_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_inputMethodEvent".}
proc fQMenuBar_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QMenuBar_virtualbase_inputMethodQuery".}
proc fcQMenuBar_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_inputMethodQuery".}
proc fQMenuBar_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QMenuBar_virtualbase_focusNextPrevChild".}
proc fcQMenuBar_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_focusNextPrevChild".}
proc fQMenuBar_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QMenuBar_virtualbase_childEvent".}
proc fcQMenuBar_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_childEvent".}
proc fQMenuBar_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QMenuBar_virtualbase_customEvent".}
proc fcQMenuBar_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_customEvent".}
proc fQMenuBar_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QMenuBar_virtualbase_connectNotify".}
proc fcQMenuBar_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_connectNotify".}
proc fQMenuBar_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QMenuBar_virtualbase_disconnectNotify".}
proc fcQMenuBar_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_disconnectNotify".}
proc fcQMenuBar_delete(self: pointer) {.importc: "QMenuBar_delete".}


func init*(T: type gen_qmenubar_types.QMenuBar, h: ptr cQMenuBar): gen_qmenubar_types.QMenuBar =
  T(h: h)
proc create*(T: type gen_qmenubar_types.QMenuBar, parent: gen_qwidget_types.QWidget): gen_qmenubar_types.QMenuBar =
  gen_qmenubar_types.QMenuBar.init(fcQMenuBar_new(parent.h))

proc create*(T: type gen_qmenubar_types.QMenuBar, ): gen_qmenubar_types.QMenuBar =
  gen_qmenubar_types.QMenuBar.init(fcQMenuBar_new2())

proc metaObject*(self: gen_qmenubar_types.QMenuBar, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMenuBar_metaObject(self.h))

proc metacast*(self: gen_qmenubar_types.QMenuBar, param1: cstring): pointer =
  fcQMenuBar_metacast(self.h, param1)

proc tr*(_: type gen_qmenubar_types.QMenuBar, s: cstring): string =
  let v_ms = fcQMenuBar_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addMenu*(self: gen_qmenubar_types.QMenuBar, menu: gen_qmenu_types.QMenu): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenuBar_addMenu(self.h, menu.h))

proc addMenu*(self: gen_qmenubar_types.QMenuBar, title: string): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fcQMenuBar_addMenuWithTitle(self.h, struct_miqt_string(data: title, len: csize_t(len(title)))))

proc addMenu*(self: gen_qmenubar_types.QMenuBar, icon: gen_qicon_types.QIcon, title: string): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fcQMenuBar_addMenu2(self.h, icon.h, struct_miqt_string(data: title, len: csize_t(len(title)))))

proc addSeparator*(self: gen_qmenubar_types.QMenuBar, ): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenuBar_addSeparator(self.h))

proc insertSeparator*(self: gen_qmenubar_types.QMenuBar, before: gen_qaction_types.QAction): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenuBar_insertSeparator(self.h, before.h))

proc insertMenu*(self: gen_qmenubar_types.QMenuBar, before: gen_qaction_types.QAction, menu: gen_qmenu_types.QMenu): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenuBar_insertMenu(self.h, before.h, menu.h))

proc clear*(self: gen_qmenubar_types.QMenuBar, ): void =
  fcQMenuBar_clear(self.h)

proc activeAction*(self: gen_qmenubar_types.QMenuBar, ): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenuBar_activeAction(self.h))

proc setActiveAction*(self: gen_qmenubar_types.QMenuBar, action: gen_qaction_types.QAction): void =
  fcQMenuBar_setActiveAction(self.h, action.h)

proc setDefaultUp*(self: gen_qmenubar_types.QMenuBar, defaultUp: bool): void =
  fcQMenuBar_setDefaultUp(self.h, defaultUp)

proc isDefaultUp*(self: gen_qmenubar_types.QMenuBar, ): bool =
  fcQMenuBar_isDefaultUp(self.h)

proc sizeHint*(self: gen_qmenubar_types.QMenuBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMenuBar_sizeHint(self.h))

proc minimumSizeHint*(self: gen_qmenubar_types.QMenuBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMenuBar_minimumSizeHint(self.h))

proc heightForWidth*(self: gen_qmenubar_types.QMenuBar, param1: cint): cint =
  fcQMenuBar_heightForWidth(self.h, param1)

proc actionGeometry*(self: gen_qmenubar_types.QMenuBar, param1: gen_qaction_types.QAction): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQMenuBar_actionGeometry(self.h, param1.h))

proc actionAt*(self: gen_qmenubar_types.QMenuBar, param1: gen_qpoint_types.QPoint): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQMenuBar_actionAt(self.h, param1.h))

proc setCornerWidget*(self: gen_qmenubar_types.QMenuBar, w: gen_qwidget_types.QWidget): void =
  fcQMenuBar_setCornerWidget(self.h, w.h)

proc cornerWidget*(self: gen_qmenubar_types.QMenuBar, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQMenuBar_cornerWidget(self.h))

proc isNativeMenuBar*(self: gen_qmenubar_types.QMenuBar, ): bool =
  fcQMenuBar_isNativeMenuBar(self.h)

proc setNativeMenuBar*(self: gen_qmenubar_types.QMenuBar, nativeMenuBar: bool): void =
  fcQMenuBar_setNativeMenuBar(self.h, nativeMenuBar)

proc setVisible*(self: gen_qmenubar_types.QMenuBar, visible: bool): void =
  fcQMenuBar_setVisible(self.h, visible)

proc triggered*(self: gen_qmenubar_types.QMenuBar, action: gen_qaction_types.QAction): void =
  fcQMenuBar_triggered(self.h, action.h)

type QMenuBartriggeredSlot* = proc(action: gen_qaction_types.QAction)
proc miqt_exec_callback_QMenuBar_triggered(slot: int, action: pointer) {.exportc.} =
  let nimfunc = cast[ptr QMenuBartriggeredSlot](cast[pointer](slot))
  let slotval1 = gen_qaction_types.QAction(h: action)

  nimfunc[](slotval1)

proc ontriggered*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBartriggeredSlot) =
  var tmp = new QMenuBartriggeredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_connect_triggered(self.h, cast[int](addr tmp[]))

proc hovered*(self: gen_qmenubar_types.QMenuBar, action: gen_qaction_types.QAction): void =
  fcQMenuBar_hovered(self.h, action.h)

type QMenuBarhoveredSlot* = proc(action: gen_qaction_types.QAction)
proc miqt_exec_callback_QMenuBar_hovered(slot: int, action: pointer) {.exportc.} =
  let nimfunc = cast[ptr QMenuBarhoveredSlot](cast[pointer](slot))
  let slotval1 = gen_qaction_types.QAction(h: action)

  nimfunc[](slotval1)

proc onhovered*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarhoveredSlot) =
  var tmp = new QMenuBarhoveredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_connect_hovered(self.h, cast[int](addr tmp[]))

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

proc setCornerWidget*(self: gen_qmenubar_types.QMenuBar, w: gen_qwidget_types.QWidget, corner: cint): void =
  fcQMenuBar_setCornerWidget2(self.h, w.h, cint(corner))

proc cornerWidget*(self: gen_qmenubar_types.QMenuBar, corner: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQMenuBar_cornerWidget1(self.h, cint(corner)))

proc QMenuBarsizeHint*(self: gen_qmenubar_types.QMenuBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQMenuBar_virtualbase_sizeHint(self.h))

type QMenuBarsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarsizeHintProc) =
  # TODO check subclass
  var tmp = new QMenuBarsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_sizeHint(self: ptr cQMenuBar, slot: int): pointer {.exportc: "miqt_exec_callback_QMenuBar_sizeHint ".} =
  var nimfunc = cast[ptr QMenuBarsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMenuBarminimumSizeHint*(self: gen_qmenubar_types.QMenuBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQMenuBar_virtualbase_minimumSizeHint(self.h))

type QMenuBarminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QMenuBarminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_minimumSizeHint(self: ptr cQMenuBar, slot: int): pointer {.exportc: "miqt_exec_callback_QMenuBar_minimumSizeHint ".} =
  var nimfunc = cast[ptr QMenuBarminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMenuBarheightForWidth*(self: gen_qmenubar_types.QMenuBar, param1: cint): cint =
  fQMenuBar_virtualbase_heightForWidth(self.h, param1)

type QMenuBarheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarheightForWidthProc) =
  # TODO check subclass
  var tmp = new QMenuBarheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_heightForWidth(self: ptr cQMenuBar, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QMenuBar_heightForWidth ".} =
  var nimfunc = cast[ptr QMenuBarheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMenuBarsetVisible*(self: gen_qmenubar_types.QMenuBar, visible: bool): void =
  fQMenuBar_virtualbase_setVisible(self.h, visible)

type QMenuBarsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarsetVisibleProc) =
  # TODO check subclass
  var tmp = new QMenuBarsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_setVisible(self: ptr cQMenuBar, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QMenuBar_setVisible ".} =
  var nimfunc = cast[ptr QMenuBarsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QMenuBarchangeEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qcoreevent_types.QEvent): void =
  fQMenuBar_virtualbase_changeEvent(self.h, param1.h)

type QMenuBarchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarchangeEventProc) =
  # TODO check subclass
  var tmp = new QMenuBarchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_changeEvent(self: ptr cQMenuBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_changeEvent ".} =
  var nimfunc = cast[ptr QMenuBarchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QMenuBarkeyPressEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qevent_types.QKeyEvent): void =
  fQMenuBar_virtualbase_keyPressEvent(self.h, param1.h)

type QMenuBarkeyPressEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QMenuBarkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_keyPressEvent(self: ptr cQMenuBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_keyPressEvent ".} =
  var nimfunc = cast[ptr QMenuBarkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QMenuBarmouseReleaseEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qevent_types.QMouseEvent): void =
  fQMenuBar_virtualbase_mouseReleaseEvent(self.h, param1.h)

type QMenuBarmouseReleaseEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QMenuBarmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_mouseReleaseEvent(self: ptr cQMenuBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QMenuBarmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QMenuBarmousePressEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qevent_types.QMouseEvent): void =
  fQMenuBar_virtualbase_mousePressEvent(self.h, param1.h)

type QMenuBarmousePressEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarmousePressEventProc) =
  # TODO check subclass
  var tmp = new QMenuBarmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_mousePressEvent(self: ptr cQMenuBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_mousePressEvent ".} =
  var nimfunc = cast[ptr QMenuBarmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QMenuBarmouseMoveEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qevent_types.QMouseEvent): void =
  fQMenuBar_virtualbase_mouseMoveEvent(self.h, param1.h)

type QMenuBarmouseMoveEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QMenuBarmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_mouseMoveEvent(self: ptr cQMenuBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QMenuBarmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QMenuBarleaveEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qcoreevent_types.QEvent): void =
  fQMenuBar_virtualbase_leaveEvent(self.h, param1.h)

type QMenuBarleaveEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarleaveEventProc) =
  # TODO check subclass
  var tmp = new QMenuBarleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_leaveEvent(self: ptr cQMenuBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_leaveEvent ".} =
  var nimfunc = cast[ptr QMenuBarleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QMenuBarpaintEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qevent_types.QPaintEvent): void =
  fQMenuBar_virtualbase_paintEvent(self.h, param1.h)

type QMenuBarpaintEventProc* = proc(param1: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarpaintEventProc) =
  # TODO check subclass
  var tmp = new QMenuBarpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_paintEvent(self: ptr cQMenuBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_paintEvent ".} =
  var nimfunc = cast[ptr QMenuBarpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)


  nimfunc[](slotval1)
proc QMenuBarresizeEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qevent_types.QResizeEvent): void =
  fQMenuBar_virtualbase_resizeEvent(self.h, param1.h)

type QMenuBarresizeEventProc* = proc(param1: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarresizeEventProc) =
  # TODO check subclass
  var tmp = new QMenuBarresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_resizeEvent(self: ptr cQMenuBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_resizeEvent ".} =
  var nimfunc = cast[ptr QMenuBarresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)


  nimfunc[](slotval1)
proc QMenuBaractionEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qevent_types.QActionEvent): void =
  fQMenuBar_virtualbase_actionEvent(self.h, param1.h)

type QMenuBaractionEventProc* = proc(param1: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBaractionEventProc) =
  # TODO check subclass
  var tmp = new QMenuBaractionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_actionEvent(self: ptr cQMenuBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_actionEvent ".} =
  var nimfunc = cast[ptr QMenuBaractionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: param1)


  nimfunc[](slotval1)
proc QMenuBarfocusOutEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qevent_types.QFocusEvent): void =
  fQMenuBar_virtualbase_focusOutEvent(self.h, param1.h)

type QMenuBarfocusOutEventProc* = proc(param1: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QMenuBarfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_focusOutEvent(self: ptr cQMenuBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_focusOutEvent ".} =
  var nimfunc = cast[ptr QMenuBarfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)


  nimfunc[](slotval1)
proc QMenuBarfocusInEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qevent_types.QFocusEvent): void =
  fQMenuBar_virtualbase_focusInEvent(self.h, param1.h)

type QMenuBarfocusInEventProc* = proc(param1: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarfocusInEventProc) =
  # TODO check subclass
  var tmp = new QMenuBarfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_focusInEvent(self: ptr cQMenuBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_focusInEvent ".} =
  var nimfunc = cast[ptr QMenuBarfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)


  nimfunc[](slotval1)
proc QMenuBartimerEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qcoreevent_types.QTimerEvent): void =
  fQMenuBar_virtualbase_timerEvent(self.h, param1.h)

type QMenuBartimerEventProc* = proc(param1: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBartimerEventProc) =
  # TODO check subclass
  var tmp = new QMenuBartimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_timerEvent(self: ptr cQMenuBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_timerEvent ".} =
  var nimfunc = cast[ptr QMenuBartimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1)


  nimfunc[](slotval1)
proc QMenuBareventFilter*(self: gen_qmenubar_types.QMenuBar, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fQMenuBar_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QMenuBareventFilterProc* = proc(param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBareventFilterProc) =
  # TODO check subclass
  var tmp = new QMenuBareventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_eventFilter(self: ptr cQMenuBar, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QMenuBar_eventFilter ".} =
  var nimfunc = cast[ptr QMenuBareventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)

  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QMenuBarevent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qcoreevent_types.QEvent): bool =
  fQMenuBar_virtualbase_event(self.h, param1.h)

type QMenuBareventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBareventProc) =
  # TODO check subclass
  var tmp = new QMenuBareventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_event(self: ptr cQMenuBar, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QMenuBar_event ".} =
  var nimfunc = cast[ptr QMenuBareventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMenuBarinitStyleOption*(self: gen_qmenubar_types.QMenuBar, option: gen_qstyleoption_types.QStyleOptionMenuItem, action: gen_qaction_types.QAction): void =
  fQMenuBar_virtualbase_initStyleOption(self.h, option.h, action.h)

type QMenuBarinitStyleOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionMenuItem, action: gen_qaction_types.QAction): void
proc oninitStyleOption*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarinitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QMenuBarinitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_initStyleOption(self: ptr cQMenuBar, slot: int, option: pointer, action: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_initStyleOption ".} =
  var nimfunc = cast[ptr QMenuBarinitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionMenuItem(h: option)

  let slotval2 = gen_qaction_types.QAction(h: action)


  nimfunc[](slotval1, slotval2)
proc QMenuBardevType*(self: gen_qmenubar_types.QMenuBar, ): cint =
  fQMenuBar_virtualbase_devType(self.h)

type QMenuBardevTypeProc* = proc(): cint
proc ondevType*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBardevTypeProc) =
  # TODO check subclass
  var tmp = new QMenuBardevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_devType(self: ptr cQMenuBar, slot: int): cint {.exportc: "miqt_exec_callback_QMenuBar_devType ".} =
  var nimfunc = cast[ptr QMenuBardevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QMenuBarhasHeightForWidth*(self: gen_qmenubar_types.QMenuBar, ): bool =
  fQMenuBar_virtualbase_hasHeightForWidth(self.h)

type QMenuBarhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QMenuBarhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_hasHeightForWidth(self: ptr cQMenuBar, slot: int): bool {.exportc: "miqt_exec_callback_QMenuBar_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QMenuBarhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QMenuBarpaintEngine*(self: gen_qmenubar_types.QMenuBar, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQMenuBar_virtualbase_paintEngine(self.h))

type QMenuBarpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarpaintEngineProc) =
  # TODO check subclass
  var tmp = new QMenuBarpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_paintEngine(self: ptr cQMenuBar, slot: int): pointer {.exportc: "miqt_exec_callback_QMenuBar_paintEngine ".} =
  var nimfunc = cast[ptr QMenuBarpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMenuBarmouseDoubleClickEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QMouseEvent): void =
  fQMenuBar_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QMenuBarmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QMenuBarmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_mouseDoubleClickEvent(self: ptr cQMenuBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QMenuBarmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QMenuBarwheelEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QWheelEvent): void =
  fQMenuBar_virtualbase_wheelEvent(self.h, event.h)

type QMenuBarwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarwheelEventProc) =
  # TODO check subclass
  var tmp = new QMenuBarwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_wheelEvent(self: ptr cQMenuBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_wheelEvent ".} =
  var nimfunc = cast[ptr QMenuBarwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QMenuBarkeyReleaseEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QKeyEvent): void =
  fQMenuBar_virtualbase_keyReleaseEvent(self.h, event.h)

type QMenuBarkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QMenuBarkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_keyReleaseEvent(self: ptr cQMenuBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QMenuBarkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QMenuBarenterEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QEnterEvent): void =
  fQMenuBar_virtualbase_enterEvent(self.h, event.h)

type QMenuBarenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarenterEventProc) =
  # TODO check subclass
  var tmp = new QMenuBarenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_enterEvent(self: ptr cQMenuBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_enterEvent ".} =
  var nimfunc = cast[ptr QMenuBarenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QMenuBarmoveEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QMoveEvent): void =
  fQMenuBar_virtualbase_moveEvent(self.h, event.h)

type QMenuBarmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarmoveEventProc) =
  # TODO check subclass
  var tmp = new QMenuBarmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_moveEvent(self: ptr cQMenuBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_moveEvent ".} =
  var nimfunc = cast[ptr QMenuBarmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QMenuBarcloseEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QCloseEvent): void =
  fQMenuBar_virtualbase_closeEvent(self.h, event.h)

type QMenuBarcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarcloseEventProc) =
  # TODO check subclass
  var tmp = new QMenuBarcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_closeEvent(self: ptr cQMenuBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_closeEvent ".} =
  var nimfunc = cast[ptr QMenuBarcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QMenuBarcontextMenuEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QContextMenuEvent): void =
  fQMenuBar_virtualbase_contextMenuEvent(self.h, event.h)

type QMenuBarcontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QMenuBarcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_contextMenuEvent(self: ptr cQMenuBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_contextMenuEvent ".} =
  var nimfunc = cast[ptr QMenuBarcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QMenuBartabletEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QTabletEvent): void =
  fQMenuBar_virtualbase_tabletEvent(self.h, event.h)

type QMenuBartabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBartabletEventProc) =
  # TODO check subclass
  var tmp = new QMenuBartabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_tabletEvent(self: ptr cQMenuBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_tabletEvent ".} =
  var nimfunc = cast[ptr QMenuBartabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QMenuBardragEnterEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QDragEnterEvent): void =
  fQMenuBar_virtualbase_dragEnterEvent(self.h, event.h)

type QMenuBardragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBardragEnterEventProc) =
  # TODO check subclass
  var tmp = new QMenuBardragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_dragEnterEvent(self: ptr cQMenuBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_dragEnterEvent ".} =
  var nimfunc = cast[ptr QMenuBardragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QMenuBardragMoveEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QDragMoveEvent): void =
  fQMenuBar_virtualbase_dragMoveEvent(self.h, event.h)

type QMenuBardragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBardragMoveEventProc) =
  # TODO check subclass
  var tmp = new QMenuBardragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_dragMoveEvent(self: ptr cQMenuBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_dragMoveEvent ".} =
  var nimfunc = cast[ptr QMenuBardragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QMenuBardragLeaveEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QDragLeaveEvent): void =
  fQMenuBar_virtualbase_dragLeaveEvent(self.h, event.h)

type QMenuBardragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBardragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QMenuBardragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_dragLeaveEvent(self: ptr cQMenuBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QMenuBardragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QMenuBardropEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QDropEvent): void =
  fQMenuBar_virtualbase_dropEvent(self.h, event.h)

type QMenuBardropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBardropEventProc) =
  # TODO check subclass
  var tmp = new QMenuBardropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_dropEvent(self: ptr cQMenuBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_dropEvent ".} =
  var nimfunc = cast[ptr QMenuBardropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QMenuBarshowEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QShowEvent): void =
  fQMenuBar_virtualbase_showEvent(self.h, event.h)

type QMenuBarshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarshowEventProc) =
  # TODO check subclass
  var tmp = new QMenuBarshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_showEvent(self: ptr cQMenuBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_showEvent ".} =
  var nimfunc = cast[ptr QMenuBarshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QMenuBarhideEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qevent_types.QHideEvent): void =
  fQMenuBar_virtualbase_hideEvent(self.h, event.h)

type QMenuBarhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarhideEventProc) =
  # TODO check subclass
  var tmp = new QMenuBarhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_hideEvent(self: ptr cQMenuBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_hideEvent ".} =
  var nimfunc = cast[ptr QMenuBarhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QMenuBarnativeEvent*(self: gen_qmenubar_types.QMenuBar, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQMenuBar_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QMenuBarnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarnativeEventProc) =
  # TODO check subclass
  var tmp = new QMenuBarnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_nativeEvent(self: ptr cQMenuBar, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QMenuBar_nativeEvent ".} =
  var nimfunc = cast[ptr QMenuBarnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QMenuBarmetric*(self: gen_qmenubar_types.QMenuBar, param1: cint): cint =
  fQMenuBar_virtualbase_metric(self.h, cint(param1))

type QMenuBarmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarmetricProc) =
  # TODO check subclass
  var tmp = new QMenuBarmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_metric(self: ptr cQMenuBar, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QMenuBar_metric ".} =
  var nimfunc = cast[ptr QMenuBarmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMenuBarinitPainter*(self: gen_qmenubar_types.QMenuBar, painter: gen_qpainter_types.QPainter): void =
  fQMenuBar_virtualbase_initPainter(self.h, painter.h)

type QMenuBarinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarinitPainterProc) =
  # TODO check subclass
  var tmp = new QMenuBarinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_initPainter(self: ptr cQMenuBar, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_initPainter ".} =
  var nimfunc = cast[ptr QMenuBarinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QMenuBarredirected*(self: gen_qmenubar_types.QMenuBar, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQMenuBar_virtualbase_redirected(self.h, offset.h))

type QMenuBarredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarredirectedProc) =
  # TODO check subclass
  var tmp = new QMenuBarredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_redirected(self: ptr cQMenuBar, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QMenuBar_redirected ".} =
  var nimfunc = cast[ptr QMenuBarredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QMenuBarsharedPainter*(self: gen_qmenubar_types.QMenuBar, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQMenuBar_virtualbase_sharedPainter(self.h))

type QMenuBarsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarsharedPainterProc) =
  # TODO check subclass
  var tmp = new QMenuBarsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_sharedPainter(self: ptr cQMenuBar, slot: int): pointer {.exportc: "miqt_exec_callback_QMenuBar_sharedPainter ".} =
  var nimfunc = cast[ptr QMenuBarsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMenuBarinputMethodEvent*(self: gen_qmenubar_types.QMenuBar, param1: gen_qevent_types.QInputMethodEvent): void =
  fQMenuBar_virtualbase_inputMethodEvent(self.h, param1.h)

type QMenuBarinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QMenuBarinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_inputMethodEvent(self: ptr cQMenuBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_inputMethodEvent ".} =
  var nimfunc = cast[ptr QMenuBarinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QMenuBarinputMethodQuery*(self: gen_qmenubar_types.QMenuBar, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQMenuBar_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QMenuBarinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QMenuBarinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_inputMethodQuery(self: ptr cQMenuBar, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QMenuBar_inputMethodQuery ".} =
  var nimfunc = cast[ptr QMenuBarinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QMenuBarfocusNextPrevChild*(self: gen_qmenubar_types.QMenuBar, next: bool): bool =
  fQMenuBar_virtualbase_focusNextPrevChild(self.h, next)

type QMenuBarfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QMenuBarfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_focusNextPrevChild(self: ptr cQMenuBar, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QMenuBar_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QMenuBarfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMenuBarchildEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qcoreevent_types.QChildEvent): void =
  fQMenuBar_virtualbase_childEvent(self.h, event.h)

type QMenuBarchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarchildEventProc) =
  # TODO check subclass
  var tmp = new QMenuBarchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_childEvent(self: ptr cQMenuBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_childEvent ".} =
  var nimfunc = cast[ptr QMenuBarchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QMenuBarcustomEvent*(self: gen_qmenubar_types.QMenuBar, event: gen_qcoreevent_types.QEvent): void =
  fQMenuBar_virtualbase_customEvent(self.h, event.h)

type QMenuBarcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarcustomEventProc) =
  # TODO check subclass
  var tmp = new QMenuBarcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_customEvent(self: ptr cQMenuBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_customEvent ".} =
  var nimfunc = cast[ptr QMenuBarcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QMenuBarconnectNotify*(self: gen_qmenubar_types.QMenuBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQMenuBar_virtualbase_connectNotify(self.h, signal.h)

type QMenuBarconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBarconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QMenuBarconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_connectNotify(self: ptr cQMenuBar, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_connectNotify ".} =
  var nimfunc = cast[ptr QMenuBarconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QMenuBardisconnectNotify*(self: gen_qmenubar_types.QMenuBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQMenuBar_virtualbase_disconnectNotify(self.h, signal.h)

type QMenuBardisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qmenubar_types.QMenuBar, slot: QMenuBardisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QMenuBardisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_disconnectNotify(self: ptr cQMenuBar, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_disconnectNotify ".} =
  var nimfunc = cast[ptr QMenuBardisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qmenubar_types.QMenuBar) =
  fcQMenuBar_delete(self.h)
