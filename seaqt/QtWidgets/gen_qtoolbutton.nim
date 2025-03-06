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
{.compile("gen_qtoolbutton.cpp", cflags).}


type QToolButtonToolButtonPopupModeEnum* = distinct cint
template DelayedPopup*(_: type QToolButtonToolButtonPopupModeEnum): untyped = 0
template MenuButtonPopup*(_: type QToolButtonToolButtonPopupModeEnum): untyped = 1
template InstantPopup*(_: type QToolButtonToolButtonPopupModeEnum): untyped = 2


import ./gen_qtoolbutton_types
export gen_qtoolbutton_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ./gen_qabstractbutton,
  ./gen_qaction_types,
  ./gen_qmenu_types,
  ./gen_qwidget_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qevent_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qabstractbutton,
  gen_qaction_types,
  gen_qmenu_types,
  gen_qwidget_types

type cQToolButton*{.exportc: "QToolButton", incompleteStruct.} = object

proc fcQToolButton_new(parent: pointer): ptr cQToolButton {.importc: "QToolButton_new".}
proc fcQToolButton_new2(): ptr cQToolButton {.importc: "QToolButton_new2".}
proc fcQToolButton_metaObject(self: pointer, ): pointer {.importc: "QToolButton_metaObject".}
proc fcQToolButton_metacast(self: pointer, param1: cstring): pointer {.importc: "QToolButton_metacast".}
proc fcQToolButton_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QToolButton_metacall".}
proc fcQToolButton_tr(s: cstring): struct_miqt_string {.importc: "QToolButton_tr".}
proc fcQToolButton_trUtf8(s: cstring): struct_miqt_string {.importc: "QToolButton_trUtf8".}
proc fcQToolButton_sizeHint(self: pointer, ): pointer {.importc: "QToolButton_sizeHint".}
proc fcQToolButton_minimumSizeHint(self: pointer, ): pointer {.importc: "QToolButton_minimumSizeHint".}
proc fcQToolButton_toolButtonStyle(self: pointer, ): cint {.importc: "QToolButton_toolButtonStyle".}
proc fcQToolButton_arrowType(self: pointer, ): cint {.importc: "QToolButton_arrowType".}
proc fcQToolButton_setArrowType(self: pointer, typeVal: cint): void {.importc: "QToolButton_setArrowType".}
proc fcQToolButton_setMenu(self: pointer, menu: pointer): void {.importc: "QToolButton_setMenu".}
proc fcQToolButton_menu(self: pointer, ): pointer {.importc: "QToolButton_menu".}
proc fcQToolButton_setPopupMode(self: pointer, mode: cint): void {.importc: "QToolButton_setPopupMode".}
proc fcQToolButton_popupMode(self: pointer, ): cint {.importc: "QToolButton_popupMode".}
proc fcQToolButton_defaultAction(self: pointer, ): pointer {.importc: "QToolButton_defaultAction".}
proc fcQToolButton_setAutoRaise(self: pointer, enable: bool): void {.importc: "QToolButton_setAutoRaise".}
proc fcQToolButton_autoRaise(self: pointer, ): bool {.importc: "QToolButton_autoRaise".}
proc fcQToolButton_showMenu(self: pointer, ): void {.importc: "QToolButton_showMenu".}
proc fcQToolButton_setToolButtonStyle(self: pointer, style: cint): void {.importc: "QToolButton_setToolButtonStyle".}
proc fcQToolButton_setDefaultAction(self: pointer, defaultAction: pointer): void {.importc: "QToolButton_setDefaultAction".}
proc fcQToolButton_triggered(self: pointer, param1: pointer): void {.importc: "QToolButton_triggered".}
proc fcQToolButton_connect_triggered(self: pointer, slot: int) {.importc: "QToolButton_connect_triggered".}
proc fcQToolButton_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QToolButton_tr2".}
proc fcQToolButton_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QToolButton_tr3".}
proc fcQToolButton_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QToolButton_trUtf82".}
proc fcQToolButton_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QToolButton_trUtf83".}
proc fQToolButton_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QToolButton_virtualbase_metaObject".}
proc fcQToolButton_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_metaObject".}
proc fQToolButton_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QToolButton_virtualbase_metacast".}
proc fcQToolButton_override_virtual_metacast(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_metacast".}
proc fQToolButton_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QToolButton_virtualbase_metacall".}
proc fcQToolButton_override_virtual_metacall(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_metacall".}
proc fQToolButton_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QToolButton_virtualbase_sizeHint".}
proc fcQToolButton_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_sizeHint".}
proc fQToolButton_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QToolButton_virtualbase_minimumSizeHint".}
proc fcQToolButton_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_minimumSizeHint".}
proc fQToolButton_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QToolButton_virtualbase_event".}
proc fcQToolButton_override_virtual_event(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_event".}
proc fQToolButton_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QToolButton_virtualbase_mousePressEvent".}
proc fcQToolButton_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_mousePressEvent".}
proc fQToolButton_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void{.importc: "QToolButton_virtualbase_mouseReleaseEvent".}
proc fcQToolButton_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_mouseReleaseEvent".}
proc fQToolButton_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QToolButton_virtualbase_paintEvent".}
proc fcQToolButton_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_paintEvent".}
proc fQToolButton_virtualbase_actionEvent(self: pointer, param1: pointer): void{.importc: "QToolButton_virtualbase_actionEvent".}
proc fcQToolButton_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_actionEvent".}
proc fQToolButton_virtualbase_enterEvent(self: pointer, param1: pointer): void{.importc: "QToolButton_virtualbase_enterEvent".}
proc fcQToolButton_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_enterEvent".}
proc fQToolButton_virtualbase_leaveEvent(self: pointer, param1: pointer): void{.importc: "QToolButton_virtualbase_leaveEvent".}
proc fcQToolButton_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_leaveEvent".}
proc fQToolButton_virtualbase_timerEvent(self: pointer, param1: pointer): void{.importc: "QToolButton_virtualbase_timerEvent".}
proc fcQToolButton_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_timerEvent".}
proc fQToolButton_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QToolButton_virtualbase_changeEvent".}
proc fcQToolButton_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_changeEvent".}
proc fQToolButton_virtualbase_hitButton(self: pointer, pos: pointer): bool{.importc: "QToolButton_virtualbase_hitButton".}
proc fcQToolButton_override_virtual_hitButton(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_hitButton".}
proc fQToolButton_virtualbase_nextCheckState(self: pointer, ): void{.importc: "QToolButton_virtualbase_nextCheckState".}
proc fcQToolButton_override_virtual_nextCheckState(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_nextCheckState".}
proc fQToolButton_virtualbase_checkStateSet(self: pointer, ): void{.importc: "QToolButton_virtualbase_checkStateSet".}
proc fcQToolButton_override_virtual_checkStateSet(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_checkStateSet".}
proc fQToolButton_virtualbase_keyPressEvent(self: pointer, e: pointer): void{.importc: "QToolButton_virtualbase_keyPressEvent".}
proc fcQToolButton_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_keyPressEvent".}
proc fQToolButton_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void{.importc: "QToolButton_virtualbase_keyReleaseEvent".}
proc fcQToolButton_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_keyReleaseEvent".}
proc fQToolButton_virtualbase_mouseMoveEvent(self: pointer, e: pointer): void{.importc: "QToolButton_virtualbase_mouseMoveEvent".}
proc fcQToolButton_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_mouseMoveEvent".}
proc fQToolButton_virtualbase_focusInEvent(self: pointer, e: pointer): void{.importc: "QToolButton_virtualbase_focusInEvent".}
proc fcQToolButton_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_focusInEvent".}
proc fQToolButton_virtualbase_focusOutEvent(self: pointer, e: pointer): void{.importc: "QToolButton_virtualbase_focusOutEvent".}
proc fcQToolButton_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_focusOutEvent".}
proc fQToolButton_virtualbase_devType(self: pointer, ): cint{.importc: "QToolButton_virtualbase_devType".}
proc fcQToolButton_override_virtual_devType(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_devType".}
proc fQToolButton_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QToolButton_virtualbase_setVisible".}
proc fcQToolButton_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_setVisible".}
proc fQToolButton_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QToolButton_virtualbase_heightForWidth".}
proc fcQToolButton_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_heightForWidth".}
proc fQToolButton_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QToolButton_virtualbase_hasHeightForWidth".}
proc fcQToolButton_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_hasHeightForWidth".}
proc fQToolButton_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QToolButton_virtualbase_paintEngine".}
proc fcQToolButton_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_paintEngine".}
proc fQToolButton_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QToolButton_virtualbase_mouseDoubleClickEvent".}
proc fcQToolButton_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_mouseDoubleClickEvent".}
proc fQToolButton_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QToolButton_virtualbase_wheelEvent".}
proc fcQToolButton_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_wheelEvent".}
proc fQToolButton_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QToolButton_virtualbase_moveEvent".}
proc fcQToolButton_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_moveEvent".}
proc fQToolButton_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QToolButton_virtualbase_resizeEvent".}
proc fcQToolButton_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_resizeEvent".}
proc fQToolButton_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QToolButton_virtualbase_closeEvent".}
proc fcQToolButton_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_closeEvent".}
proc fQToolButton_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QToolButton_virtualbase_contextMenuEvent".}
proc fcQToolButton_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_contextMenuEvent".}
proc fQToolButton_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QToolButton_virtualbase_tabletEvent".}
proc fcQToolButton_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_tabletEvent".}
proc fQToolButton_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QToolButton_virtualbase_dragEnterEvent".}
proc fcQToolButton_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_dragEnterEvent".}
proc fQToolButton_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QToolButton_virtualbase_dragMoveEvent".}
proc fcQToolButton_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_dragMoveEvent".}
proc fQToolButton_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QToolButton_virtualbase_dragLeaveEvent".}
proc fcQToolButton_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_dragLeaveEvent".}
proc fQToolButton_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QToolButton_virtualbase_dropEvent".}
proc fcQToolButton_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_dropEvent".}
proc fQToolButton_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QToolButton_virtualbase_showEvent".}
proc fcQToolButton_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_showEvent".}
proc fQToolButton_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QToolButton_virtualbase_hideEvent".}
proc fcQToolButton_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_hideEvent".}
proc fQToolButton_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QToolButton_virtualbase_nativeEvent".}
proc fcQToolButton_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_nativeEvent".}
proc fQToolButton_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QToolButton_virtualbase_metric".}
proc fcQToolButton_override_virtual_metric(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_metric".}
proc fQToolButton_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QToolButton_virtualbase_initPainter".}
proc fcQToolButton_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_initPainter".}
proc fQToolButton_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QToolButton_virtualbase_redirected".}
proc fcQToolButton_override_virtual_redirected(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_redirected".}
proc fQToolButton_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QToolButton_virtualbase_sharedPainter".}
proc fcQToolButton_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_sharedPainter".}
proc fQToolButton_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QToolButton_virtualbase_inputMethodEvent".}
proc fcQToolButton_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_inputMethodEvent".}
proc fQToolButton_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QToolButton_virtualbase_inputMethodQuery".}
proc fcQToolButton_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_inputMethodQuery".}
proc fQToolButton_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QToolButton_virtualbase_focusNextPrevChild".}
proc fcQToolButton_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_focusNextPrevChild".}
proc fQToolButton_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QToolButton_virtualbase_eventFilter".}
proc fcQToolButton_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_eventFilter".}
proc fQToolButton_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QToolButton_virtualbase_childEvent".}
proc fcQToolButton_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_childEvent".}
proc fQToolButton_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QToolButton_virtualbase_customEvent".}
proc fcQToolButton_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_customEvent".}
proc fQToolButton_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QToolButton_virtualbase_connectNotify".}
proc fcQToolButton_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_connectNotify".}
proc fQToolButton_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QToolButton_virtualbase_disconnectNotify".}
proc fcQToolButton_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QToolButton_override_virtual_disconnectNotify".}
proc fcQToolButton_staticMetaObject(): pointer {.importc: "QToolButton_staticMetaObject".}
proc fcQToolButton_delete(self: pointer) {.importc: "QToolButton_delete".}


func init*(T: type gen_qtoolbutton_types.QToolButton, h: ptr cQToolButton): gen_qtoolbutton_types.QToolButton =
  T(h: h)
proc create*(T: type gen_qtoolbutton_types.QToolButton, parent: gen_qwidget_types.QWidget): gen_qtoolbutton_types.QToolButton =
  gen_qtoolbutton_types.QToolButton.init(fcQToolButton_new(parent.h))

proc create*(T: type gen_qtoolbutton_types.QToolButton, ): gen_qtoolbutton_types.QToolButton =
  gen_qtoolbutton_types.QToolButton.init(fcQToolButton_new2())

proc metaObject*(self: gen_qtoolbutton_types.QToolButton, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQToolButton_metaObject(self.h))

proc metacast*(self: gen_qtoolbutton_types.QToolButton, param1: cstring): pointer =
  fcQToolButton_metacast(self.h, param1)

proc metacall*(self: gen_qtoolbutton_types.QToolButton, param1: cint, param2: cint, param3: pointer): cint =
  fcQToolButton_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtoolbutton_types.QToolButton, s: cstring): string =
  let v_ms = fcQToolButton_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtoolbutton_types.QToolButton, s: cstring): string =
  let v_ms = fcQToolButton_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: gen_qtoolbutton_types.QToolButton, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQToolButton_sizeHint(self.h))

proc minimumSizeHint*(self: gen_qtoolbutton_types.QToolButton, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQToolButton_minimumSizeHint(self.h))

proc toolButtonStyle*(self: gen_qtoolbutton_types.QToolButton, ): cint =
  cint(fcQToolButton_toolButtonStyle(self.h))

proc arrowType*(self: gen_qtoolbutton_types.QToolButton, ): cint =
  cint(fcQToolButton_arrowType(self.h))

proc setArrowType*(self: gen_qtoolbutton_types.QToolButton, typeVal: cint): void =
  fcQToolButton_setArrowType(self.h, cint(typeVal))

proc setMenu*(self: gen_qtoolbutton_types.QToolButton, menu: gen_qmenu_types.QMenu): void =
  fcQToolButton_setMenu(self.h, menu.h)

proc menu*(self: gen_qtoolbutton_types.QToolButton, ): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fcQToolButton_menu(self.h))

proc setPopupMode*(self: gen_qtoolbutton_types.QToolButton, mode: cint): void =
  fcQToolButton_setPopupMode(self.h, cint(mode))

proc popupMode*(self: gen_qtoolbutton_types.QToolButton, ): cint =
  cint(fcQToolButton_popupMode(self.h))

proc defaultAction*(self: gen_qtoolbutton_types.QToolButton, ): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQToolButton_defaultAction(self.h))

proc setAutoRaise*(self: gen_qtoolbutton_types.QToolButton, enable: bool): void =
  fcQToolButton_setAutoRaise(self.h, enable)

proc autoRaise*(self: gen_qtoolbutton_types.QToolButton, ): bool =
  fcQToolButton_autoRaise(self.h)

proc showMenu*(self: gen_qtoolbutton_types.QToolButton, ): void =
  fcQToolButton_showMenu(self.h)

proc setToolButtonStyle*(self: gen_qtoolbutton_types.QToolButton, style: cint): void =
  fcQToolButton_setToolButtonStyle(self.h, cint(style))

proc setDefaultAction*(self: gen_qtoolbutton_types.QToolButton, defaultAction: gen_qaction_types.QAction): void =
  fcQToolButton_setDefaultAction(self.h, defaultAction.h)

proc triggered*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qaction_types.QAction): void =
  fcQToolButton_triggered(self.h, param1.h)

type QToolButtontriggeredSlot* = proc(param1: gen_qaction_types.QAction)
proc miqt_exec_callback_QToolButton_triggered(slot: int, param1: pointer) {.exportc.} =
  let nimfunc = cast[ptr QToolButtontriggeredSlot](cast[pointer](slot))
  let slotval1 = gen_qaction_types.QAction(h: param1)

  nimfunc[](slotval1)

proc ontriggered*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtontriggeredSlot) =
  var tmp = new QToolButtontriggeredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_connect_triggered(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qtoolbutton_types.QToolButton, s: cstring, c: cstring): string =
  let v_ms = fcQToolButton_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtoolbutton_types.QToolButton, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQToolButton_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtoolbutton_types.QToolButton, s: cstring, c: cstring): string =
  let v_ms = fcQToolButton_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtoolbutton_types.QToolButton, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQToolButton_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QToolButtonmetaObject*(self: gen_qtoolbutton_types.QToolButton, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQToolButton_virtualbase_metaObject(self.h))

type QToolButtonmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonmetaObjectProc) =
  # TODO check subclass
  var tmp = new QToolButtonmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_metaObject(self: ptr cQToolButton, slot: int): pointer {.exportc: "miqt_exec_callback_QToolButton_metaObject ".} =
  var nimfunc = cast[ptr QToolButtonmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QToolButtonmetacast*(self: gen_qtoolbutton_types.QToolButton, param1: cstring): pointer =
  fQToolButton_virtualbase_metacast(self.h, param1)

type QToolButtonmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonmetacastProc) =
  # TODO check subclass
  var tmp = new QToolButtonmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_metacast(self: ptr cQToolButton, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QToolButton_metacast ".} =
  var nimfunc = cast[ptr QToolButtonmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QToolButtonmetacall*(self: gen_qtoolbutton_types.QToolButton, param1: cint, param2: cint, param3: pointer): cint =
  fQToolButton_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QToolButtonmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonmetacallProc) =
  # TODO check subclass
  var tmp = new QToolButtonmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_metacall(self: ptr cQToolButton, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QToolButton_metacall ".} =
  var nimfunc = cast[ptr QToolButtonmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QToolButtonsizeHint*(self: gen_qtoolbutton_types.QToolButton, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQToolButton_virtualbase_sizeHint(self.h))

type QToolButtonsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonsizeHintProc) =
  # TODO check subclass
  var tmp = new QToolButtonsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_sizeHint(self: ptr cQToolButton, slot: int): pointer {.exportc: "miqt_exec_callback_QToolButton_sizeHint ".} =
  var nimfunc = cast[ptr QToolButtonsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QToolButtonminimumSizeHint*(self: gen_qtoolbutton_types.QToolButton, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQToolButton_virtualbase_minimumSizeHint(self.h))

type QToolButtonminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QToolButtonminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_minimumSizeHint(self: ptr cQToolButton, slot: int): pointer {.exportc: "miqt_exec_callback_QToolButton_minimumSizeHint ".} =
  var nimfunc = cast[ptr QToolButtonminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QToolButtonevent*(self: gen_qtoolbutton_types.QToolButton, e: gen_qcoreevent_types.QEvent): bool =
  fQToolButton_virtualbase_event(self.h, e.h)

type QToolButtoneventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtoneventProc) =
  # TODO check subclass
  var tmp = new QToolButtoneventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_event(self: ptr cQToolButton, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QToolButton_event ".} =
  var nimfunc = cast[ptr QToolButtoneventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QToolButtonmousePressEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qevent_types.QMouseEvent): void =
  fQToolButton_virtualbase_mousePressEvent(self.h, param1.h)

type QToolButtonmousePressEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonmousePressEventProc) =
  # TODO check subclass
  var tmp = new QToolButtonmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_mousePressEvent(self: ptr cQToolButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QToolButton_mousePressEvent ".} =
  var nimfunc = cast[ptr QToolButtonmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QToolButtonmouseReleaseEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qevent_types.QMouseEvent): void =
  fQToolButton_virtualbase_mouseReleaseEvent(self.h, param1.h)

type QToolButtonmouseReleaseEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QToolButtonmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_mouseReleaseEvent(self: ptr cQToolButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QToolButton_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QToolButtonmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QToolButtonpaintEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qevent_types.QPaintEvent): void =
  fQToolButton_virtualbase_paintEvent(self.h, param1.h)

type QToolButtonpaintEventProc* = proc(param1: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonpaintEventProc) =
  # TODO check subclass
  var tmp = new QToolButtonpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_paintEvent(self: ptr cQToolButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QToolButton_paintEvent ".} =
  var nimfunc = cast[ptr QToolButtonpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)


  nimfunc[](slotval1)
proc QToolButtonactionEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qevent_types.QActionEvent): void =
  fQToolButton_virtualbase_actionEvent(self.h, param1.h)

type QToolButtonactionEventProc* = proc(param1: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonactionEventProc) =
  # TODO check subclass
  var tmp = new QToolButtonactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_actionEvent(self: ptr cQToolButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QToolButton_actionEvent ".} =
  var nimfunc = cast[ptr QToolButtonactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: param1)


  nimfunc[](slotval1)
proc QToolButtonenterEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qcoreevent_types.QEvent): void =
  fQToolButton_virtualbase_enterEvent(self.h, param1.h)

type QToolButtonenterEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonenterEventProc) =
  # TODO check subclass
  var tmp = new QToolButtonenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_enterEvent(self: ptr cQToolButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QToolButton_enterEvent ".} =
  var nimfunc = cast[ptr QToolButtonenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QToolButtonleaveEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qcoreevent_types.QEvent): void =
  fQToolButton_virtualbase_leaveEvent(self.h, param1.h)

type QToolButtonleaveEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonleaveEventProc) =
  # TODO check subclass
  var tmp = new QToolButtonleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_leaveEvent(self: ptr cQToolButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QToolButton_leaveEvent ".} =
  var nimfunc = cast[ptr QToolButtonleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QToolButtontimerEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qcoreevent_types.QTimerEvent): void =
  fQToolButton_virtualbase_timerEvent(self.h, param1.h)

type QToolButtontimerEventProc* = proc(param1: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtontimerEventProc) =
  # TODO check subclass
  var tmp = new QToolButtontimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_timerEvent(self: ptr cQToolButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QToolButton_timerEvent ".} =
  var nimfunc = cast[ptr QToolButtontimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1)


  nimfunc[](slotval1)
proc QToolButtonchangeEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qcoreevent_types.QEvent): void =
  fQToolButton_virtualbase_changeEvent(self.h, param1.h)

type QToolButtonchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonchangeEventProc) =
  # TODO check subclass
  var tmp = new QToolButtonchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_changeEvent(self: ptr cQToolButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QToolButton_changeEvent ".} =
  var nimfunc = cast[ptr QToolButtonchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QToolButtonhitButton*(self: gen_qtoolbutton_types.QToolButton, pos: gen_qpoint_types.QPoint): bool =
  fQToolButton_virtualbase_hitButton(self.h, pos.h)

type QToolButtonhitButtonProc* = proc(pos: gen_qpoint_types.QPoint): bool
proc onhitButton*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonhitButtonProc) =
  # TODO check subclass
  var tmp = new QToolButtonhitButtonProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_hitButton(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_hitButton(self: ptr cQToolButton, slot: int, pos: pointer): bool {.exportc: "miqt_exec_callback_QToolButton_hitButton ".} =
  var nimfunc = cast[ptr QToolButtonhitButtonProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: pos)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QToolButtonnextCheckState*(self: gen_qtoolbutton_types.QToolButton, ): void =
  fQToolButton_virtualbase_nextCheckState(self.h)

type QToolButtonnextCheckStateProc* = proc(): void
proc onnextCheckState*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonnextCheckStateProc) =
  # TODO check subclass
  var tmp = new QToolButtonnextCheckStateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_nextCheckState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_nextCheckState(self: ptr cQToolButton, slot: int): void {.exportc: "miqt_exec_callback_QToolButton_nextCheckState ".} =
  var nimfunc = cast[ptr QToolButtonnextCheckStateProc](cast[pointer](slot))

  nimfunc[]()
proc QToolButtoncheckStateSet*(self: gen_qtoolbutton_types.QToolButton, ): void =
  fQToolButton_virtualbase_checkStateSet(self.h)

type QToolButtoncheckStateSetProc* = proc(): void
proc oncheckStateSet*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtoncheckStateSetProc) =
  # TODO check subclass
  var tmp = new QToolButtoncheckStateSetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_checkStateSet(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_checkStateSet(self: ptr cQToolButton, slot: int): void {.exportc: "miqt_exec_callback_QToolButton_checkStateSet ".} =
  var nimfunc = cast[ptr QToolButtoncheckStateSetProc](cast[pointer](slot))

  nimfunc[]()
proc QToolButtonkeyPressEvent*(self: gen_qtoolbutton_types.QToolButton, e: gen_qevent_types.QKeyEvent): void =
  fQToolButton_virtualbase_keyPressEvent(self.h, e.h)

type QToolButtonkeyPressEventProc* = proc(e: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QToolButtonkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_keyPressEvent(self: ptr cQToolButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QToolButton_keyPressEvent ".} =
  var nimfunc = cast[ptr QToolButtonkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e)


  nimfunc[](slotval1)
proc QToolButtonkeyReleaseEvent*(self: gen_qtoolbutton_types.QToolButton, e: gen_qevent_types.QKeyEvent): void =
  fQToolButton_virtualbase_keyReleaseEvent(self.h, e.h)

type QToolButtonkeyReleaseEventProc* = proc(e: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QToolButtonkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_keyReleaseEvent(self: ptr cQToolButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QToolButton_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QToolButtonkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e)


  nimfunc[](slotval1)
proc QToolButtonmouseMoveEvent*(self: gen_qtoolbutton_types.QToolButton, e: gen_qevent_types.QMouseEvent): void =
  fQToolButton_virtualbase_mouseMoveEvent(self.h, e.h)

type QToolButtonmouseMoveEventProc* = proc(e: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QToolButtonmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_mouseMoveEvent(self: ptr cQToolButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QToolButton_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QToolButtonmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QToolButtonfocusInEvent*(self: gen_qtoolbutton_types.QToolButton, e: gen_qevent_types.QFocusEvent): void =
  fQToolButton_virtualbase_focusInEvent(self.h, e.h)

type QToolButtonfocusInEventProc* = proc(e: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonfocusInEventProc) =
  # TODO check subclass
  var tmp = new QToolButtonfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_focusInEvent(self: ptr cQToolButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QToolButton_focusInEvent ".} =
  var nimfunc = cast[ptr QToolButtonfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)


  nimfunc[](slotval1)
proc QToolButtonfocusOutEvent*(self: gen_qtoolbutton_types.QToolButton, e: gen_qevent_types.QFocusEvent): void =
  fQToolButton_virtualbase_focusOutEvent(self.h, e.h)

type QToolButtonfocusOutEventProc* = proc(e: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QToolButtonfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_focusOutEvent(self: ptr cQToolButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QToolButton_focusOutEvent ".} =
  var nimfunc = cast[ptr QToolButtonfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)


  nimfunc[](slotval1)
proc QToolButtondevType*(self: gen_qtoolbutton_types.QToolButton, ): cint =
  fQToolButton_virtualbase_devType(self.h)

type QToolButtondevTypeProc* = proc(): cint
proc ondevType*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtondevTypeProc) =
  # TODO check subclass
  var tmp = new QToolButtondevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_devType(self: ptr cQToolButton, slot: int): cint {.exportc: "miqt_exec_callback_QToolButton_devType ".} =
  var nimfunc = cast[ptr QToolButtondevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QToolButtonsetVisible*(self: gen_qtoolbutton_types.QToolButton, visible: bool): void =
  fQToolButton_virtualbase_setVisible(self.h, visible)

type QToolButtonsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonsetVisibleProc) =
  # TODO check subclass
  var tmp = new QToolButtonsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_setVisible(self: ptr cQToolButton, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QToolButton_setVisible ".} =
  var nimfunc = cast[ptr QToolButtonsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QToolButtonheightForWidth*(self: gen_qtoolbutton_types.QToolButton, param1: cint): cint =
  fQToolButton_virtualbase_heightForWidth(self.h, param1)

type QToolButtonheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonheightForWidthProc) =
  # TODO check subclass
  var tmp = new QToolButtonheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_heightForWidth(self: ptr cQToolButton, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QToolButton_heightForWidth ".} =
  var nimfunc = cast[ptr QToolButtonheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QToolButtonhasHeightForWidth*(self: gen_qtoolbutton_types.QToolButton, ): bool =
  fQToolButton_virtualbase_hasHeightForWidth(self.h)

type QToolButtonhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QToolButtonhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_hasHeightForWidth(self: ptr cQToolButton, slot: int): bool {.exportc: "miqt_exec_callback_QToolButton_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QToolButtonhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QToolButtonpaintEngine*(self: gen_qtoolbutton_types.QToolButton, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQToolButton_virtualbase_paintEngine(self.h))

type QToolButtonpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonpaintEngineProc) =
  # TODO check subclass
  var tmp = new QToolButtonpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_paintEngine(self: ptr cQToolButton, slot: int): pointer {.exportc: "miqt_exec_callback_QToolButton_paintEngine ".} =
  var nimfunc = cast[ptr QToolButtonpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QToolButtonmouseDoubleClickEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QMouseEvent): void =
  fQToolButton_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QToolButtonmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QToolButtonmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_mouseDoubleClickEvent(self: ptr cQToolButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolButton_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QToolButtonmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QToolButtonwheelEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QWheelEvent): void =
  fQToolButton_virtualbase_wheelEvent(self.h, event.h)

type QToolButtonwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonwheelEventProc) =
  # TODO check subclass
  var tmp = new QToolButtonwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_wheelEvent(self: ptr cQToolButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolButton_wheelEvent ".} =
  var nimfunc = cast[ptr QToolButtonwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QToolButtonmoveEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QMoveEvent): void =
  fQToolButton_virtualbase_moveEvent(self.h, event.h)

type QToolButtonmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonmoveEventProc) =
  # TODO check subclass
  var tmp = new QToolButtonmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_moveEvent(self: ptr cQToolButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolButton_moveEvent ".} =
  var nimfunc = cast[ptr QToolButtonmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QToolButtonresizeEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QResizeEvent): void =
  fQToolButton_virtualbase_resizeEvent(self.h, event.h)

type QToolButtonresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonresizeEventProc) =
  # TODO check subclass
  var tmp = new QToolButtonresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_resizeEvent(self: ptr cQToolButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolButton_resizeEvent ".} =
  var nimfunc = cast[ptr QToolButtonresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QToolButtoncloseEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QCloseEvent): void =
  fQToolButton_virtualbase_closeEvent(self.h, event.h)

type QToolButtoncloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtoncloseEventProc) =
  # TODO check subclass
  var tmp = new QToolButtoncloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_closeEvent(self: ptr cQToolButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolButton_closeEvent ".} =
  var nimfunc = cast[ptr QToolButtoncloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QToolButtoncontextMenuEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QContextMenuEvent): void =
  fQToolButton_virtualbase_contextMenuEvent(self.h, event.h)

type QToolButtoncontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtoncontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QToolButtoncontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_contextMenuEvent(self: ptr cQToolButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolButton_contextMenuEvent ".} =
  var nimfunc = cast[ptr QToolButtoncontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QToolButtontabletEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QTabletEvent): void =
  fQToolButton_virtualbase_tabletEvent(self.h, event.h)

type QToolButtontabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtontabletEventProc) =
  # TODO check subclass
  var tmp = new QToolButtontabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_tabletEvent(self: ptr cQToolButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolButton_tabletEvent ".} =
  var nimfunc = cast[ptr QToolButtontabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QToolButtondragEnterEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QDragEnterEvent): void =
  fQToolButton_virtualbase_dragEnterEvent(self.h, event.h)

type QToolButtondragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtondragEnterEventProc) =
  # TODO check subclass
  var tmp = new QToolButtondragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_dragEnterEvent(self: ptr cQToolButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolButton_dragEnterEvent ".} =
  var nimfunc = cast[ptr QToolButtondragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QToolButtondragMoveEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QDragMoveEvent): void =
  fQToolButton_virtualbase_dragMoveEvent(self.h, event.h)

type QToolButtondragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtondragMoveEventProc) =
  # TODO check subclass
  var tmp = new QToolButtondragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_dragMoveEvent(self: ptr cQToolButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolButton_dragMoveEvent ".} =
  var nimfunc = cast[ptr QToolButtondragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QToolButtondragLeaveEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QDragLeaveEvent): void =
  fQToolButton_virtualbase_dragLeaveEvent(self.h, event.h)

type QToolButtondragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtondragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QToolButtondragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_dragLeaveEvent(self: ptr cQToolButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolButton_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QToolButtondragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QToolButtondropEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QDropEvent): void =
  fQToolButton_virtualbase_dropEvent(self.h, event.h)

type QToolButtondropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtondropEventProc) =
  # TODO check subclass
  var tmp = new QToolButtondropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_dropEvent(self: ptr cQToolButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolButton_dropEvent ".} =
  var nimfunc = cast[ptr QToolButtondropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QToolButtonshowEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QShowEvent): void =
  fQToolButton_virtualbase_showEvent(self.h, event.h)

type QToolButtonshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonshowEventProc) =
  # TODO check subclass
  var tmp = new QToolButtonshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_showEvent(self: ptr cQToolButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolButton_showEvent ".} =
  var nimfunc = cast[ptr QToolButtonshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QToolButtonhideEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QHideEvent): void =
  fQToolButton_virtualbase_hideEvent(self.h, event.h)

type QToolButtonhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonhideEventProc) =
  # TODO check subclass
  var tmp = new QToolButtonhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_hideEvent(self: ptr cQToolButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolButton_hideEvent ".} =
  var nimfunc = cast[ptr QToolButtonhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QToolButtonnativeEvent*(self: gen_qtoolbutton_types.QToolButton, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQToolButton_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QToolButtonnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonnativeEventProc) =
  # TODO check subclass
  var tmp = new QToolButtonnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_nativeEvent(self: ptr cQToolButton, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QToolButton_nativeEvent ".} =
  var nimfunc = cast[ptr QToolButtonnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QToolButtonmetric*(self: gen_qtoolbutton_types.QToolButton, param1: cint): cint =
  fQToolButton_virtualbase_metric(self.h, cint(param1))

type QToolButtonmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonmetricProc) =
  # TODO check subclass
  var tmp = new QToolButtonmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_metric(self: ptr cQToolButton, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QToolButton_metric ".} =
  var nimfunc = cast[ptr QToolButtonmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QToolButtoninitPainter*(self: gen_qtoolbutton_types.QToolButton, painter: gen_qpainter_types.QPainter): void =
  fQToolButton_virtualbase_initPainter(self.h, painter.h)

type QToolButtoninitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtoninitPainterProc) =
  # TODO check subclass
  var tmp = new QToolButtoninitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_initPainter(self: ptr cQToolButton, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QToolButton_initPainter ".} =
  var nimfunc = cast[ptr QToolButtoninitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QToolButtonredirected*(self: gen_qtoolbutton_types.QToolButton, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQToolButton_virtualbase_redirected(self.h, offset.h))

type QToolButtonredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonredirectedProc) =
  # TODO check subclass
  var tmp = new QToolButtonredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_redirected(self: ptr cQToolButton, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QToolButton_redirected ".} =
  var nimfunc = cast[ptr QToolButtonredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QToolButtonsharedPainter*(self: gen_qtoolbutton_types.QToolButton, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQToolButton_virtualbase_sharedPainter(self.h))

type QToolButtonsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonsharedPainterProc) =
  # TODO check subclass
  var tmp = new QToolButtonsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_sharedPainter(self: ptr cQToolButton, slot: int): pointer {.exportc: "miqt_exec_callback_QToolButton_sharedPainter ".} =
  var nimfunc = cast[ptr QToolButtonsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QToolButtoninputMethodEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qevent_types.QInputMethodEvent): void =
  fQToolButton_virtualbase_inputMethodEvent(self.h, param1.h)

type QToolButtoninputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtoninputMethodEventProc) =
  # TODO check subclass
  var tmp = new QToolButtoninputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_inputMethodEvent(self: ptr cQToolButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QToolButton_inputMethodEvent ".} =
  var nimfunc = cast[ptr QToolButtoninputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QToolButtoninputMethodQuery*(self: gen_qtoolbutton_types.QToolButton, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQToolButton_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QToolButtoninputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtoninputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QToolButtoninputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_inputMethodQuery(self: ptr cQToolButton, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QToolButton_inputMethodQuery ".} =
  var nimfunc = cast[ptr QToolButtoninputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QToolButtonfocusNextPrevChild*(self: gen_qtoolbutton_types.QToolButton, next: bool): bool =
  fQToolButton_virtualbase_focusNextPrevChild(self.h, next)

type QToolButtonfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QToolButtonfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_focusNextPrevChild(self: ptr cQToolButton, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QToolButton_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QToolButtonfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QToolButtoneventFilter*(self: gen_qtoolbutton_types.QToolButton, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQToolButton_virtualbase_eventFilter(self.h, watched.h, event.h)

type QToolButtoneventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtoneventFilterProc) =
  # TODO check subclass
  var tmp = new QToolButtoneventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_eventFilter(self: ptr cQToolButton, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QToolButton_eventFilter ".} =
  var nimfunc = cast[ptr QToolButtoneventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QToolButtonchildEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qcoreevent_types.QChildEvent): void =
  fQToolButton_virtualbase_childEvent(self.h, event.h)

type QToolButtonchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonchildEventProc) =
  # TODO check subclass
  var tmp = new QToolButtonchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_childEvent(self: ptr cQToolButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolButton_childEvent ".} =
  var nimfunc = cast[ptr QToolButtonchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QToolButtoncustomEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qcoreevent_types.QEvent): void =
  fQToolButton_virtualbase_customEvent(self.h, event.h)

type QToolButtoncustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtoncustomEventProc) =
  # TODO check subclass
  var tmp = new QToolButtoncustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_customEvent(self: ptr cQToolButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolButton_customEvent ".} =
  var nimfunc = cast[ptr QToolButtoncustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QToolButtonconnectNotify*(self: gen_qtoolbutton_types.QToolButton, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQToolButton_virtualbase_connectNotify(self.h, signal.h)

type QToolButtonconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtonconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QToolButtonconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_connectNotify(self: ptr cQToolButton, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QToolButton_connectNotify ".} =
  var nimfunc = cast[ptr QToolButtonconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QToolButtondisconnectNotify*(self: gen_qtoolbutton_types.QToolButton, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQToolButton_virtualbase_disconnectNotify(self.h, signal.h)

type QToolButtondisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtondisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QToolButtondisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolButton_disconnectNotify(self: ptr cQToolButton, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QToolButton_disconnectNotify ".} =
  var nimfunc = cast[ptr QToolButtondisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qtoolbutton_types.QToolButton): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQToolButton_staticMetaObject())
proc delete*(self: gen_qtoolbutton_types.QToolButton) =
  fcQToolButton_delete(self.h)
