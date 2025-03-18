import ./qtwidgets_pkg

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


{.compile("gen_qtoolbutton.cpp", QtWidgetsCFlags).}


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
  ./gen_qstyleoption_types,
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
  gen_qstyleoption_types,
  gen_qwidget_types

type cQToolButton*{.exportc: "QToolButton", incompleteStruct.} = object

proc fcQToolButton_metaObject(self: pointer): pointer {.importc: "QToolButton_metaObject".}
proc fcQToolButton_metacast(self: pointer, param1: cstring): pointer {.importc: "QToolButton_metacast".}
proc fcQToolButton_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QToolButton_metacall".}
proc fcQToolButton_tr(s: cstring): struct_miqt_string {.importc: "QToolButton_tr".}
proc fcQToolButton_trUtf8(s: cstring): struct_miqt_string {.importc: "QToolButton_trUtf8".}
proc fcQToolButton_sizeHint(self: pointer): pointer {.importc: "QToolButton_sizeHint".}
proc fcQToolButton_minimumSizeHint(self: pointer): pointer {.importc: "QToolButton_minimumSizeHint".}
proc fcQToolButton_toolButtonStyle(self: pointer): cint {.importc: "QToolButton_toolButtonStyle".}
proc fcQToolButton_arrowType(self: pointer): cint {.importc: "QToolButton_arrowType".}
proc fcQToolButton_setArrowType(self: pointer, typeVal: cint): void {.importc: "QToolButton_setArrowType".}
proc fcQToolButton_setMenu(self: pointer, menu: pointer): void {.importc: "QToolButton_setMenu".}
proc fcQToolButton_menu(self: pointer): pointer {.importc: "QToolButton_menu".}
proc fcQToolButton_setPopupMode(self: pointer, mode: cint): void {.importc: "QToolButton_setPopupMode".}
proc fcQToolButton_popupMode(self: pointer): cint {.importc: "QToolButton_popupMode".}
proc fcQToolButton_defaultAction(self: pointer): pointer {.importc: "QToolButton_defaultAction".}
proc fcQToolButton_setAutoRaise(self: pointer, enable: bool): void {.importc: "QToolButton_setAutoRaise".}
proc fcQToolButton_autoRaise(self: pointer): bool {.importc: "QToolButton_autoRaise".}
proc fcQToolButton_showMenu(self: pointer): void {.importc: "QToolButton_showMenu".}
proc fcQToolButton_setToolButtonStyle(self: pointer, style: cint): void {.importc: "QToolButton_setToolButtonStyle".}
proc fcQToolButton_setDefaultAction(self: pointer, defaultAction: pointer): void {.importc: "QToolButton_setDefaultAction".}
proc fcQToolButton_triggered(self: pointer, param1: pointer): void {.importc: "QToolButton_triggered".}
proc fcQToolButton_connect_triggered(self: pointer, slot: int, callback: proc (slot: int, param1: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QToolButton_connect_triggered".}
proc fcQToolButton_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QToolButton_tr2".}
proc fcQToolButton_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QToolButton_tr3".}
proc fcQToolButton_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QToolButton_trUtf82".}
proc fcQToolButton_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QToolButton_trUtf83".}
proc fcQToolButton_vtbl(self: pointer): pointer {.importc: "QToolButton_vtbl".}
proc fcQToolButton_vdata(self: pointer): pointer {.importc: "QToolButton_vdata".}

type cQToolButtonVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  hitButton*: proc(self: pointer, pos: pointer): bool {.cdecl, raises: [], gcsafe.}
  nextCheckState*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  checkStateSet*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQToolButton_virtualbase_metaObject(self: pointer): pointer {.importc: "QToolButton_virtualbase_metaObject".}
proc fcQToolButton_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QToolButton_virtualbase_metacast".}
proc fcQToolButton_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QToolButton_virtualbase_metacall".}
proc fcQToolButton_virtualbase_sizeHint(self: pointer): pointer {.importc: "QToolButton_virtualbase_sizeHint".}
proc fcQToolButton_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QToolButton_virtualbase_minimumSizeHint".}
proc fcQToolButton_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QToolButton_virtualbase_event".}
proc fcQToolButton_virtualbase_mousePressEvent(self: pointer, param1: pointer): void {.importc: "QToolButton_virtualbase_mousePressEvent".}
proc fcQToolButton_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void {.importc: "QToolButton_virtualbase_mouseReleaseEvent".}
proc fcQToolButton_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QToolButton_virtualbase_paintEvent".}
proc fcQToolButton_virtualbase_actionEvent(self: pointer, param1: pointer): void {.importc: "QToolButton_virtualbase_actionEvent".}
proc fcQToolButton_virtualbase_enterEvent(self: pointer, param1: pointer): void {.importc: "QToolButton_virtualbase_enterEvent".}
proc fcQToolButton_virtualbase_leaveEvent(self: pointer, param1: pointer): void {.importc: "QToolButton_virtualbase_leaveEvent".}
proc fcQToolButton_virtualbase_timerEvent(self: pointer, param1: pointer): void {.importc: "QToolButton_virtualbase_timerEvent".}
proc fcQToolButton_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QToolButton_virtualbase_changeEvent".}
proc fcQToolButton_virtualbase_hitButton(self: pointer, pos: pointer): bool {.importc: "QToolButton_virtualbase_hitButton".}
proc fcQToolButton_virtualbase_nextCheckState(self: pointer): void {.importc: "QToolButton_virtualbase_nextCheckState".}
proc fcQToolButton_virtualbase_checkStateSet(self: pointer): void {.importc: "QToolButton_virtualbase_checkStateSet".}
proc fcQToolButton_virtualbase_keyPressEvent(self: pointer, e: pointer): void {.importc: "QToolButton_virtualbase_keyPressEvent".}
proc fcQToolButton_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void {.importc: "QToolButton_virtualbase_keyReleaseEvent".}
proc fcQToolButton_virtualbase_mouseMoveEvent(self: pointer, e: pointer): void {.importc: "QToolButton_virtualbase_mouseMoveEvent".}
proc fcQToolButton_virtualbase_focusInEvent(self: pointer, e: pointer): void {.importc: "QToolButton_virtualbase_focusInEvent".}
proc fcQToolButton_virtualbase_focusOutEvent(self: pointer, e: pointer): void {.importc: "QToolButton_virtualbase_focusOutEvent".}
proc fcQToolButton_virtualbase_devType(self: pointer): cint {.importc: "QToolButton_virtualbase_devType".}
proc fcQToolButton_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QToolButton_virtualbase_setVisible".}
proc fcQToolButton_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QToolButton_virtualbase_heightForWidth".}
proc fcQToolButton_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QToolButton_virtualbase_hasHeightForWidth".}
proc fcQToolButton_virtualbase_paintEngine(self: pointer): pointer {.importc: "QToolButton_virtualbase_paintEngine".}
proc fcQToolButton_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QToolButton_virtualbase_mouseDoubleClickEvent".}
proc fcQToolButton_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QToolButton_virtualbase_wheelEvent".}
proc fcQToolButton_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QToolButton_virtualbase_moveEvent".}
proc fcQToolButton_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QToolButton_virtualbase_resizeEvent".}
proc fcQToolButton_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QToolButton_virtualbase_closeEvent".}
proc fcQToolButton_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QToolButton_virtualbase_contextMenuEvent".}
proc fcQToolButton_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QToolButton_virtualbase_tabletEvent".}
proc fcQToolButton_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QToolButton_virtualbase_dragEnterEvent".}
proc fcQToolButton_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QToolButton_virtualbase_dragMoveEvent".}
proc fcQToolButton_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QToolButton_virtualbase_dragLeaveEvent".}
proc fcQToolButton_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QToolButton_virtualbase_dropEvent".}
proc fcQToolButton_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QToolButton_virtualbase_showEvent".}
proc fcQToolButton_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QToolButton_virtualbase_hideEvent".}
proc fcQToolButton_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QToolButton_virtualbase_nativeEvent".}
proc fcQToolButton_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QToolButton_virtualbase_metric".}
proc fcQToolButton_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QToolButton_virtualbase_initPainter".}
proc fcQToolButton_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QToolButton_virtualbase_redirected".}
proc fcQToolButton_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QToolButton_virtualbase_sharedPainter".}
proc fcQToolButton_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QToolButton_virtualbase_inputMethodEvent".}
proc fcQToolButton_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QToolButton_virtualbase_inputMethodQuery".}
proc fcQToolButton_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QToolButton_virtualbase_focusNextPrevChild".}
proc fcQToolButton_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QToolButton_virtualbase_eventFilter".}
proc fcQToolButton_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QToolButton_virtualbase_childEvent".}
proc fcQToolButton_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QToolButton_virtualbase_customEvent".}
proc fcQToolButton_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QToolButton_virtualbase_connectNotify".}
proc fcQToolButton_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QToolButton_virtualbase_disconnectNotify".}
proc fcQToolButton_protectedbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QToolButton_protectedbase_initStyleOption".}
proc fcQToolButton_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QToolButton_protectedbase_updateMicroFocus".}
proc fcQToolButton_protectedbase_create(self: pointer): void {.importc: "QToolButton_protectedbase_create".}
proc fcQToolButton_protectedbase_destroy(self: pointer): void {.importc: "QToolButton_protectedbase_destroy".}
proc fcQToolButton_protectedbase_focusNextChild(self: pointer): bool {.importc: "QToolButton_protectedbase_focusNextChild".}
proc fcQToolButton_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QToolButton_protectedbase_focusPreviousChild".}
proc fcQToolButton_protectedbase_sender(self: pointer): pointer {.importc: "QToolButton_protectedbase_sender".}
proc fcQToolButton_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QToolButton_protectedbase_senderSignalIndex".}
proc fcQToolButton_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QToolButton_protectedbase_receivers".}
proc fcQToolButton_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QToolButton_protectedbase_isSignalConnected".}
proc fcQToolButton_new(vtbl, vdata: pointer, parent: pointer): ptr cQToolButton {.importc: "QToolButton_new".}
proc fcQToolButton_new2(vtbl, vdata: pointer): ptr cQToolButton {.importc: "QToolButton_new2".}
proc fcQToolButton_staticMetaObject(): pointer {.importc: "QToolButton_staticMetaObject".}

proc metaObject*(self: gen_qtoolbutton_types.QToolButton): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQToolButton_metaObject(self.h), owned: false)

proc metacast*(self: gen_qtoolbutton_types.QToolButton, param1: cstring): pointer =
  fcQToolButton_metacast(self.h, param1)

proc metacall*(self: gen_qtoolbutton_types.QToolButton, param1: cint, param2: cint, param3: pointer): cint =
  fcQToolButton_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtoolbutton_types.QToolButton, s: cstring): string =
  let v_ms = fcQToolButton_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtoolbutton_types.QToolButton, s: cstring): string =
  let v_ms = fcQToolButton_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: gen_qtoolbutton_types.QToolButton): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQToolButton_sizeHint(self.h), owned: true)

proc minimumSizeHint*(self: gen_qtoolbutton_types.QToolButton): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQToolButton_minimumSizeHint(self.h), owned: true)

proc toolButtonStyle*(self: gen_qtoolbutton_types.QToolButton): cint =
  cint(fcQToolButton_toolButtonStyle(self.h))

proc arrowType*(self: gen_qtoolbutton_types.QToolButton): cint =
  cint(fcQToolButton_arrowType(self.h))

proc setArrowType*(self: gen_qtoolbutton_types.QToolButton, typeVal: cint): void =
  fcQToolButton_setArrowType(self.h, cint(typeVal))

proc setMenu*(self: gen_qtoolbutton_types.QToolButton, menu: gen_qmenu_types.QMenu): void =
  fcQToolButton_setMenu(self.h, menu.h)

proc menu*(self: gen_qtoolbutton_types.QToolButton): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fcQToolButton_menu(self.h), owned: false)

proc setPopupMode*(self: gen_qtoolbutton_types.QToolButton, mode: cint): void =
  fcQToolButton_setPopupMode(self.h, cint(mode))

proc popupMode*(self: gen_qtoolbutton_types.QToolButton): cint =
  cint(fcQToolButton_popupMode(self.h))

proc defaultAction*(self: gen_qtoolbutton_types.QToolButton): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQToolButton_defaultAction(self.h), owned: false)

proc setAutoRaise*(self: gen_qtoolbutton_types.QToolButton, enable: bool): void =
  fcQToolButton_setAutoRaise(self.h, enable)

proc autoRaise*(self: gen_qtoolbutton_types.QToolButton): bool =
  fcQToolButton_autoRaise(self.h)

proc showMenu*(self: gen_qtoolbutton_types.QToolButton): void =
  fcQToolButton_showMenu(self.h)

proc setToolButtonStyle*(self: gen_qtoolbutton_types.QToolButton, style: cint): void =
  fcQToolButton_setToolButtonStyle(self.h, cint(style))

proc setDefaultAction*(self: gen_qtoolbutton_types.QToolButton, defaultAction: gen_qaction_types.QAction): void =
  fcQToolButton_setDefaultAction(self.h, defaultAction.h)

proc triggered*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qaction_types.QAction): void =
  fcQToolButton_triggered(self.h, param1.h)

type QToolButtontriggeredSlot* = proc(param1: gen_qaction_types.QAction)
proc fcQToolButton_slot_callback_triggered(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QToolButtontriggeredSlot](cast[pointer](slot))
  let slotval1 = gen_qaction_types.QAction(h: param1, owned: false)

  nimfunc[](slotval1)

proc fcQToolButton_slot_callback_triggered_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QToolButtontriggeredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onTriggered*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtontriggeredSlot) =
  var tmp = new QToolButtontriggeredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_connect_triggered(self.h, cast[int](addr tmp[]), fcQToolButton_slot_callback_triggered, fcQToolButton_slot_callback_triggered_release)

proc tr*(_: type gen_qtoolbutton_types.QToolButton, s: cstring, c: cstring): string =
  let v_ms = fcQToolButton_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtoolbutton_types.QToolButton, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQToolButton_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtoolbutton_types.QToolButton, s: cstring, c: cstring): string =
  let v_ms = fcQToolButton_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtoolbutton_types.QToolButton, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQToolButton_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QToolButtonmetaObjectProc* = proc(self: QToolButton): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QToolButtonmetacastProc* = proc(self: QToolButton, param1: cstring): pointer {.raises: [], gcsafe.}
type QToolButtonmetacallProc* = proc(self: QToolButton, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QToolButtonsizeHintProc* = proc(self: QToolButton): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QToolButtonminimumSizeHintProc* = proc(self: QToolButton): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QToolButtoneventProc* = proc(self: QToolButton, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QToolButtonmousePressEventProc* = proc(self: QToolButton, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QToolButtonmouseReleaseEventProc* = proc(self: QToolButton, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QToolButtonpaintEventProc* = proc(self: QToolButton, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QToolButtonactionEventProc* = proc(self: QToolButton, param1: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QToolButtonenterEventProc* = proc(self: QToolButton, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QToolButtonleaveEventProc* = proc(self: QToolButton, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QToolButtontimerEventProc* = proc(self: QToolButton, param1: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QToolButtonchangeEventProc* = proc(self: QToolButton, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QToolButtonhitButtonProc* = proc(self: QToolButton, pos: gen_qpoint_types.QPoint): bool {.raises: [], gcsafe.}
type QToolButtonnextCheckStateProc* = proc(self: QToolButton): void {.raises: [], gcsafe.}
type QToolButtoncheckStateSetProc* = proc(self: QToolButton): void {.raises: [], gcsafe.}
type QToolButtonkeyPressEventProc* = proc(self: QToolButton, e: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QToolButtonkeyReleaseEventProc* = proc(self: QToolButton, e: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QToolButtonmouseMoveEventProc* = proc(self: QToolButton, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QToolButtonfocusInEventProc* = proc(self: QToolButton, e: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QToolButtonfocusOutEventProc* = proc(self: QToolButton, e: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QToolButtondevTypeProc* = proc(self: QToolButton): cint {.raises: [], gcsafe.}
type QToolButtonsetVisibleProc* = proc(self: QToolButton, visible: bool): void {.raises: [], gcsafe.}
type QToolButtonheightForWidthProc* = proc(self: QToolButton, param1: cint): cint {.raises: [], gcsafe.}
type QToolButtonhasHeightForWidthProc* = proc(self: QToolButton): bool {.raises: [], gcsafe.}
type QToolButtonpaintEngineProc* = proc(self: QToolButton): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QToolButtonmouseDoubleClickEventProc* = proc(self: QToolButton, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QToolButtonwheelEventProc* = proc(self: QToolButton, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QToolButtonmoveEventProc* = proc(self: QToolButton, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QToolButtonresizeEventProc* = proc(self: QToolButton, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QToolButtoncloseEventProc* = proc(self: QToolButton, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QToolButtoncontextMenuEventProc* = proc(self: QToolButton, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QToolButtontabletEventProc* = proc(self: QToolButton, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QToolButtondragEnterEventProc* = proc(self: QToolButton, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QToolButtondragMoveEventProc* = proc(self: QToolButton, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QToolButtondragLeaveEventProc* = proc(self: QToolButton, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QToolButtondropEventProc* = proc(self: QToolButton, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QToolButtonshowEventProc* = proc(self: QToolButton, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QToolButtonhideEventProc* = proc(self: QToolButton, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QToolButtonnativeEventProc* = proc(self: QToolButton, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QToolButtonmetricProc* = proc(self: QToolButton, param1: cint): cint {.raises: [], gcsafe.}
type QToolButtoninitPainterProc* = proc(self: QToolButton, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QToolButtonredirectedProc* = proc(self: QToolButton, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QToolButtonsharedPainterProc* = proc(self: QToolButton): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QToolButtoninputMethodEventProc* = proc(self: QToolButton, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QToolButtoninputMethodQueryProc* = proc(self: QToolButton, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QToolButtonfocusNextPrevChildProc* = proc(self: QToolButton, next: bool): bool {.raises: [], gcsafe.}
type QToolButtoneventFilterProc* = proc(self: QToolButton, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QToolButtonchildEventProc* = proc(self: QToolButton, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QToolButtoncustomEventProc* = proc(self: QToolButton, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QToolButtonconnectNotifyProc* = proc(self: QToolButton, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QToolButtondisconnectNotifyProc* = proc(self: QToolButton, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QToolButtonVTable* {.inheritable, pure.} = object
  vtbl: cQToolButtonVTable
  metaObject*: QToolButtonmetaObjectProc
  metacast*: QToolButtonmetacastProc
  metacall*: QToolButtonmetacallProc
  sizeHint*: QToolButtonsizeHintProc
  minimumSizeHint*: QToolButtonminimumSizeHintProc
  event*: QToolButtoneventProc
  mousePressEvent*: QToolButtonmousePressEventProc
  mouseReleaseEvent*: QToolButtonmouseReleaseEventProc
  paintEvent*: QToolButtonpaintEventProc
  actionEvent*: QToolButtonactionEventProc
  enterEvent*: QToolButtonenterEventProc
  leaveEvent*: QToolButtonleaveEventProc
  timerEvent*: QToolButtontimerEventProc
  changeEvent*: QToolButtonchangeEventProc
  hitButton*: QToolButtonhitButtonProc
  nextCheckState*: QToolButtonnextCheckStateProc
  checkStateSet*: QToolButtoncheckStateSetProc
  keyPressEvent*: QToolButtonkeyPressEventProc
  keyReleaseEvent*: QToolButtonkeyReleaseEventProc
  mouseMoveEvent*: QToolButtonmouseMoveEventProc
  focusInEvent*: QToolButtonfocusInEventProc
  focusOutEvent*: QToolButtonfocusOutEventProc
  devType*: QToolButtondevTypeProc
  setVisible*: QToolButtonsetVisibleProc
  heightForWidth*: QToolButtonheightForWidthProc
  hasHeightForWidth*: QToolButtonhasHeightForWidthProc
  paintEngine*: QToolButtonpaintEngineProc
  mouseDoubleClickEvent*: QToolButtonmouseDoubleClickEventProc
  wheelEvent*: QToolButtonwheelEventProc
  moveEvent*: QToolButtonmoveEventProc
  resizeEvent*: QToolButtonresizeEventProc
  closeEvent*: QToolButtoncloseEventProc
  contextMenuEvent*: QToolButtoncontextMenuEventProc
  tabletEvent*: QToolButtontabletEventProc
  dragEnterEvent*: QToolButtondragEnterEventProc
  dragMoveEvent*: QToolButtondragMoveEventProc
  dragLeaveEvent*: QToolButtondragLeaveEventProc
  dropEvent*: QToolButtondropEventProc
  showEvent*: QToolButtonshowEventProc
  hideEvent*: QToolButtonhideEventProc
  nativeEvent*: QToolButtonnativeEventProc
  metric*: QToolButtonmetricProc
  initPainter*: QToolButtoninitPainterProc
  redirected*: QToolButtonredirectedProc
  sharedPainter*: QToolButtonsharedPainterProc
  inputMethodEvent*: QToolButtoninputMethodEventProc
  inputMethodQuery*: QToolButtoninputMethodQueryProc
  focusNextPrevChild*: QToolButtonfocusNextPrevChildProc
  eventFilter*: QToolButtoneventFilterProc
  childEvent*: QToolButtonchildEventProc
  customEvent*: QToolButtoncustomEventProc
  connectNotify*: QToolButtonconnectNotifyProc
  disconnectNotify*: QToolButtondisconnectNotifyProc

proc QToolButtonmetaObject*(self: gen_qtoolbutton_types.QToolButton): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQToolButton_virtualbase_metaObject(self.h), owned: false)

proc QToolButtonmetacast*(self: gen_qtoolbutton_types.QToolButton, param1: cstring): pointer =
  fcQToolButton_virtualbase_metacast(self.h, param1)

proc QToolButtonmetacall*(self: gen_qtoolbutton_types.QToolButton, param1: cint, param2: cint, param3: pointer): cint =
  fcQToolButton_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QToolButtonsizeHint*(self: gen_qtoolbutton_types.QToolButton): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQToolButton_virtualbase_sizeHint(self.h), owned: true)

proc QToolButtonminimumSizeHint*(self: gen_qtoolbutton_types.QToolButton): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQToolButton_virtualbase_minimumSizeHint(self.h), owned: true)

proc QToolButtonevent*(self: gen_qtoolbutton_types.QToolButton, e: gen_qcoreevent_types.QEvent): bool =
  fcQToolButton_virtualbase_event(self.h, e.h)

proc QToolButtonmousePressEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qevent_types.QMouseEvent): void =
  fcQToolButton_virtualbase_mousePressEvent(self.h, param1.h)

proc QToolButtonmouseReleaseEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qevent_types.QMouseEvent): void =
  fcQToolButton_virtualbase_mouseReleaseEvent(self.h, param1.h)

proc QToolButtonpaintEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qevent_types.QPaintEvent): void =
  fcQToolButton_virtualbase_paintEvent(self.h, param1.h)

proc QToolButtonactionEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qevent_types.QActionEvent): void =
  fcQToolButton_virtualbase_actionEvent(self.h, param1.h)

proc QToolButtonenterEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qcoreevent_types.QEvent): void =
  fcQToolButton_virtualbase_enterEvent(self.h, param1.h)

proc QToolButtonleaveEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qcoreevent_types.QEvent): void =
  fcQToolButton_virtualbase_leaveEvent(self.h, param1.h)

proc QToolButtontimerEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qcoreevent_types.QTimerEvent): void =
  fcQToolButton_virtualbase_timerEvent(self.h, param1.h)

proc QToolButtonchangeEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qcoreevent_types.QEvent): void =
  fcQToolButton_virtualbase_changeEvent(self.h, param1.h)

proc QToolButtonhitButton*(self: gen_qtoolbutton_types.QToolButton, pos: gen_qpoint_types.QPoint): bool =
  fcQToolButton_virtualbase_hitButton(self.h, pos.h)

proc QToolButtonnextCheckState*(self: gen_qtoolbutton_types.QToolButton): void =
  fcQToolButton_virtualbase_nextCheckState(self.h)

proc QToolButtoncheckStateSet*(self: gen_qtoolbutton_types.QToolButton): void =
  fcQToolButton_virtualbase_checkStateSet(self.h)

proc QToolButtonkeyPressEvent*(self: gen_qtoolbutton_types.QToolButton, e: gen_qevent_types.QKeyEvent): void =
  fcQToolButton_virtualbase_keyPressEvent(self.h, e.h)

proc QToolButtonkeyReleaseEvent*(self: gen_qtoolbutton_types.QToolButton, e: gen_qevent_types.QKeyEvent): void =
  fcQToolButton_virtualbase_keyReleaseEvent(self.h, e.h)

proc QToolButtonmouseMoveEvent*(self: gen_qtoolbutton_types.QToolButton, e: gen_qevent_types.QMouseEvent): void =
  fcQToolButton_virtualbase_mouseMoveEvent(self.h, e.h)

proc QToolButtonfocusInEvent*(self: gen_qtoolbutton_types.QToolButton, e: gen_qevent_types.QFocusEvent): void =
  fcQToolButton_virtualbase_focusInEvent(self.h, e.h)

proc QToolButtonfocusOutEvent*(self: gen_qtoolbutton_types.QToolButton, e: gen_qevent_types.QFocusEvent): void =
  fcQToolButton_virtualbase_focusOutEvent(self.h, e.h)

proc QToolButtondevType*(self: gen_qtoolbutton_types.QToolButton): cint =
  fcQToolButton_virtualbase_devType(self.h)

proc QToolButtonsetVisible*(self: gen_qtoolbutton_types.QToolButton, visible: bool): void =
  fcQToolButton_virtualbase_setVisible(self.h, visible)

proc QToolButtonheightForWidth*(self: gen_qtoolbutton_types.QToolButton, param1: cint): cint =
  fcQToolButton_virtualbase_heightForWidth(self.h, param1)

proc QToolButtonhasHeightForWidth*(self: gen_qtoolbutton_types.QToolButton): bool =
  fcQToolButton_virtualbase_hasHeightForWidth(self.h)

proc QToolButtonpaintEngine*(self: gen_qtoolbutton_types.QToolButton): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQToolButton_virtualbase_paintEngine(self.h), owned: false)

proc QToolButtonmouseDoubleClickEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QMouseEvent): void =
  fcQToolButton_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc QToolButtonwheelEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QWheelEvent): void =
  fcQToolButton_virtualbase_wheelEvent(self.h, event.h)

proc QToolButtonmoveEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QMoveEvent): void =
  fcQToolButton_virtualbase_moveEvent(self.h, event.h)

proc QToolButtonresizeEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QResizeEvent): void =
  fcQToolButton_virtualbase_resizeEvent(self.h, event.h)

proc QToolButtoncloseEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QCloseEvent): void =
  fcQToolButton_virtualbase_closeEvent(self.h, event.h)

proc QToolButtoncontextMenuEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QContextMenuEvent): void =
  fcQToolButton_virtualbase_contextMenuEvent(self.h, event.h)

proc QToolButtontabletEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QTabletEvent): void =
  fcQToolButton_virtualbase_tabletEvent(self.h, event.h)

proc QToolButtondragEnterEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QDragEnterEvent): void =
  fcQToolButton_virtualbase_dragEnterEvent(self.h, event.h)

proc QToolButtondragMoveEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QDragMoveEvent): void =
  fcQToolButton_virtualbase_dragMoveEvent(self.h, event.h)

proc QToolButtondragLeaveEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQToolButton_virtualbase_dragLeaveEvent(self.h, event.h)

proc QToolButtondropEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QDropEvent): void =
  fcQToolButton_virtualbase_dropEvent(self.h, event.h)

proc QToolButtonshowEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QShowEvent): void =
  fcQToolButton_virtualbase_showEvent(self.h, event.h)

proc QToolButtonhideEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QHideEvent): void =
  fcQToolButton_virtualbase_hideEvent(self.h, event.h)

proc QToolButtonnativeEvent*(self: gen_qtoolbutton_types.QToolButton, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQToolButton_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc QToolButtonmetric*(self: gen_qtoolbutton_types.QToolButton, param1: cint): cint =
  fcQToolButton_virtualbase_metric(self.h, cint(param1))

proc QToolButtoninitPainter*(self: gen_qtoolbutton_types.QToolButton, painter: gen_qpainter_types.QPainter): void =
  fcQToolButton_virtualbase_initPainter(self.h, painter.h)

proc QToolButtonredirected*(self: gen_qtoolbutton_types.QToolButton, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQToolButton_virtualbase_redirected(self.h, offset.h), owned: false)

proc QToolButtonsharedPainter*(self: gen_qtoolbutton_types.QToolButton): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQToolButton_virtualbase_sharedPainter(self.h), owned: false)

proc QToolButtoninputMethodEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQToolButton_virtualbase_inputMethodEvent(self.h, param1.h)

proc QToolButtoninputMethodQuery*(self: gen_qtoolbutton_types.QToolButton, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQToolButton_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc QToolButtonfocusNextPrevChild*(self: gen_qtoolbutton_types.QToolButton, next: bool): bool =
  fcQToolButton_virtualbase_focusNextPrevChild(self.h, next)

proc QToolButtoneventFilter*(self: gen_qtoolbutton_types.QToolButton, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQToolButton_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QToolButtonchildEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qcoreevent_types.QChildEvent): void =
  fcQToolButton_virtualbase_childEvent(self.h, event.h)

proc QToolButtoncustomEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qcoreevent_types.QEvent): void =
  fcQToolButton_virtualbase_customEvent(self.h, event.h)

proc QToolButtonconnectNotify*(self: gen_qtoolbutton_types.QToolButton, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQToolButton_virtualbase_connectNotify(self.h, signal.h)

proc QToolButtondisconnectNotify*(self: gen_qtoolbutton_types.QToolButton, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQToolButton_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQToolButton_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQToolButton_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQToolButton_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQToolButton_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQToolButton_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQToolButton_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQToolButton_vtable_callback_mousePressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQToolButton_vtable_callback_mouseReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQToolButton_vtable_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc fcQToolButton_vtable_callback_actionEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: param1, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc fcQToolButton_vtable_callback_enterEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc fcQToolButton_vtable_callback_leaveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc fcQToolButton_vtable_callback_timerEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQToolButton_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc fcQToolButton_vtable_callback_hitButton(self: pointer, pos: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: pos, owned: false)
  var virtualReturn = vtbl[].hitButton(self, slotval1)
  virtualReturn

proc fcQToolButton_vtable_callback_nextCheckState(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  vtbl[].nextCheckState(self)

proc fcQToolButton_vtable_callback_checkStateSet(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  vtbl[].checkStateSet(self)

proc fcQToolButton_vtable_callback_keyPressEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQToolButton_vtable_callback_keyReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQToolButton_vtable_callback_mouseMoveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQToolButton_vtable_callback_focusInEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQToolButton_vtable_callback_focusOutEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQToolButton_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQToolButton_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc fcQToolButton_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQToolButton_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQToolButton_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQToolButton_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQToolButton_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQToolButton_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc fcQToolButton_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc fcQToolButton_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc fcQToolButton_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc fcQToolButton_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc fcQToolButton_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQToolButton_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQToolButton_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQToolButton_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc fcQToolButton_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc fcQToolButton_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc fcQToolButton_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQToolButton_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQToolButton_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc fcQToolButton_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQToolButton_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQToolButton_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQToolButton_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQToolButton_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc fcQToolButton_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQToolButton_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQToolButton_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQToolButton_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQToolButton_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQToolButton* {.inheritable.} = ref object of QToolButton
  vtbl*: cQToolButtonVTable

method metaObject*(self: VirtualQToolButton): gen_qobjectdefs_types.QMetaObject {.base.} =
  QToolButtonmetaObject(self[])
method metacast*(self: VirtualQToolButton, param1: cstring): pointer {.base.} =
  QToolButtonmetacast(self[], param1)
method metacall*(self: VirtualQToolButton, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QToolButtonmetacall(self[], param1, param2, param3)
method sizeHint*(self: VirtualQToolButton): gen_qsize_types.QSize {.base.} =
  QToolButtonsizeHint(self[])
method minimumSizeHint*(self: VirtualQToolButton): gen_qsize_types.QSize {.base.} =
  QToolButtonminimumSizeHint(self[])
method event*(self: VirtualQToolButton, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QToolButtonevent(self[], e)
method mousePressEvent*(self: VirtualQToolButton, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QToolButtonmousePressEvent(self[], param1)
method mouseReleaseEvent*(self: VirtualQToolButton, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QToolButtonmouseReleaseEvent(self[], param1)
method paintEvent*(self: VirtualQToolButton, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QToolButtonpaintEvent(self[], param1)
method actionEvent*(self: VirtualQToolButton, param1: gen_qevent_types.QActionEvent): void {.base.} =
  QToolButtonactionEvent(self[], param1)
method enterEvent*(self: VirtualQToolButton, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QToolButtonenterEvent(self[], param1)
method leaveEvent*(self: VirtualQToolButton, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QToolButtonleaveEvent(self[], param1)
method timerEvent*(self: VirtualQToolButton, param1: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QToolButtontimerEvent(self[], param1)
method changeEvent*(self: VirtualQToolButton, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QToolButtonchangeEvent(self[], param1)
method hitButton*(self: VirtualQToolButton, pos: gen_qpoint_types.QPoint): bool {.base.} =
  QToolButtonhitButton(self[], pos)
method nextCheckState*(self: VirtualQToolButton): void {.base.} =
  QToolButtonnextCheckState(self[])
method checkStateSet*(self: VirtualQToolButton): void {.base.} =
  QToolButtoncheckStateSet(self[])
method keyPressEvent*(self: VirtualQToolButton, e: gen_qevent_types.QKeyEvent): void {.base.} =
  QToolButtonkeyPressEvent(self[], e)
method keyReleaseEvent*(self: VirtualQToolButton, e: gen_qevent_types.QKeyEvent): void {.base.} =
  QToolButtonkeyReleaseEvent(self[], e)
method mouseMoveEvent*(self: VirtualQToolButton, e: gen_qevent_types.QMouseEvent): void {.base.} =
  QToolButtonmouseMoveEvent(self[], e)
method focusInEvent*(self: VirtualQToolButton, e: gen_qevent_types.QFocusEvent): void {.base.} =
  QToolButtonfocusInEvent(self[], e)
method focusOutEvent*(self: VirtualQToolButton, e: gen_qevent_types.QFocusEvent): void {.base.} =
  QToolButtonfocusOutEvent(self[], e)
method devType*(self: VirtualQToolButton): cint {.base.} =
  QToolButtondevType(self[])
method setVisible*(self: VirtualQToolButton, visible: bool): void {.base.} =
  QToolButtonsetVisible(self[], visible)
method heightForWidth*(self: VirtualQToolButton, param1: cint): cint {.base.} =
  QToolButtonheightForWidth(self[], param1)
method hasHeightForWidth*(self: VirtualQToolButton): bool {.base.} =
  QToolButtonhasHeightForWidth(self[])
method paintEngine*(self: VirtualQToolButton): gen_qpaintengine_types.QPaintEngine {.base.} =
  QToolButtonpaintEngine(self[])
method mouseDoubleClickEvent*(self: VirtualQToolButton, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QToolButtonmouseDoubleClickEvent(self[], event)
method wheelEvent*(self: VirtualQToolButton, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QToolButtonwheelEvent(self[], event)
method moveEvent*(self: VirtualQToolButton, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QToolButtonmoveEvent(self[], event)
method resizeEvent*(self: VirtualQToolButton, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QToolButtonresizeEvent(self[], event)
method closeEvent*(self: VirtualQToolButton, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QToolButtoncloseEvent(self[], event)
method contextMenuEvent*(self: VirtualQToolButton, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QToolButtoncontextMenuEvent(self[], event)
method tabletEvent*(self: VirtualQToolButton, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QToolButtontabletEvent(self[], event)
method dragEnterEvent*(self: VirtualQToolButton, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QToolButtondragEnterEvent(self[], event)
method dragMoveEvent*(self: VirtualQToolButton, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QToolButtondragMoveEvent(self[], event)
method dragLeaveEvent*(self: VirtualQToolButton, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QToolButtondragLeaveEvent(self[], event)
method dropEvent*(self: VirtualQToolButton, event: gen_qevent_types.QDropEvent): void {.base.} =
  QToolButtondropEvent(self[], event)
method showEvent*(self: VirtualQToolButton, event: gen_qevent_types.QShowEvent): void {.base.} =
  QToolButtonshowEvent(self[], event)
method hideEvent*(self: VirtualQToolButton, event: gen_qevent_types.QHideEvent): void {.base.} =
  QToolButtonhideEvent(self[], event)
method nativeEvent*(self: VirtualQToolButton, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QToolButtonnativeEvent(self[], eventType, message, resultVal)
method metric*(self: VirtualQToolButton, param1: cint): cint {.base.} =
  QToolButtonmetric(self[], param1)
method initPainter*(self: VirtualQToolButton, painter: gen_qpainter_types.QPainter): void {.base.} =
  QToolButtoninitPainter(self[], painter)
method redirected*(self: VirtualQToolButton, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QToolButtonredirected(self[], offset)
method sharedPainter*(self: VirtualQToolButton): gen_qpainter_types.QPainter {.base.} =
  QToolButtonsharedPainter(self[])
method inputMethodEvent*(self: VirtualQToolButton, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QToolButtoninputMethodEvent(self[], param1)
method inputMethodQuery*(self: VirtualQToolButton, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QToolButtoninputMethodQuery(self[], param1)
method focusNextPrevChild*(self: VirtualQToolButton, next: bool): bool {.base.} =
  QToolButtonfocusNextPrevChild(self[], next)
method eventFilter*(self: VirtualQToolButton, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QToolButtoneventFilter(self[], watched, event)
method childEvent*(self: VirtualQToolButton, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QToolButtonchildEvent(self[], event)
method customEvent*(self: VirtualQToolButton, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QToolButtoncustomEvent(self[], event)
method connectNotify*(self: VirtualQToolButton, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QToolButtonconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQToolButton, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QToolButtondisconnectNotify(self[], signal)

proc fcQToolButton_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQToolButton_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQToolButton_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQToolButton_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQToolButton_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQToolButton_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQToolButton_method_callback_mousePressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQToolButton_method_callback_mouseReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQToolButton_method_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  inst.paintEvent(slotval1)

proc fcQToolButton_method_callback_actionEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: param1, owned: false)
  inst.actionEvent(slotval1)

proc fcQToolButton_method_callback_enterEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.enterEvent(slotval1)

proc fcQToolButton_method_callback_leaveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.leaveEvent(slotval1)

proc fcQToolButton_method_callback_timerEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  inst.timerEvent(slotval1)

proc fcQToolButton_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

proc fcQToolButton_method_callback_hitButton(self: pointer, pos: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: pos, owned: false)
  var virtualReturn = inst.hitButton(slotval1)
  virtualReturn

proc fcQToolButton_method_callback_nextCheckState(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  inst.nextCheckState()

proc fcQToolButton_method_callback_checkStateSet(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  inst.checkStateSet()

proc fcQToolButton_method_callback_keyPressEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQToolButton_method_callback_keyReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQToolButton_method_callback_mouseMoveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQToolButton_method_callback_focusInEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  inst.focusInEvent(slotval1)

proc fcQToolButton_method_callback_focusOutEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQToolButton_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQToolButton_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

proc fcQToolButton_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQToolButton_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQToolButton_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQToolButton_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQToolButton_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

proc fcQToolButton_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

proc fcQToolButton_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

proc fcQToolButton_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

proc fcQToolButton_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

proc fcQToolButton_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

proc fcQToolButton_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

proc fcQToolButton_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

proc fcQToolButton_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

proc fcQToolButton_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

proc fcQToolButton_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

proc fcQToolButton_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

proc fcQToolButton_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQToolButton_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQToolButton_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

proc fcQToolButton_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQToolButton_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQToolButton_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

proc fcQToolButton_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQToolButton_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

proc fcQToolButton_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQToolButton_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQToolButton_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQToolButton_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQToolButton_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc initStyleOption*(self: gen_qtoolbutton_types.QToolButton, option: gen_qstyleoption_types.QStyleOptionToolButton): void =
  fcQToolButton_protectedbase_initStyleOption(self.h, option.h)

proc updateMicroFocus*(self: gen_qtoolbutton_types.QToolButton): void =
  fcQToolButton_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qtoolbutton_types.QToolButton): void =
  fcQToolButton_protectedbase_create(self.h)

proc destroy*(self: gen_qtoolbutton_types.QToolButton): void =
  fcQToolButton_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qtoolbutton_types.QToolButton): bool =
  fcQToolButton_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qtoolbutton_types.QToolButton): bool =
  fcQToolButton_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qtoolbutton_types.QToolButton): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQToolButton_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qtoolbutton_types.QToolButton): cint =
  fcQToolButton_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qtoolbutton_types.QToolButton, signal: cstring): cint =
  fcQToolButton_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qtoolbutton_types.QToolButton, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQToolButton_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qtoolbutton_types.QToolButton,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QToolButtonVTable = nil): gen_qtoolbutton_types.QToolButton =
  let vtbl = if vtbl == nil: new QToolButtonVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QToolButtonVTable](fcQToolButton_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQToolButton_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQToolButton_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQToolButton_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQToolButton_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQToolButton_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQToolButton_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQToolButton_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQToolButton_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQToolButton_vtable_callback_paintEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQToolButton_vtable_callback_actionEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQToolButton_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQToolButton_vtable_callback_leaveEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQToolButton_vtable_callback_timerEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQToolButton_vtable_callback_changeEvent
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = fcQToolButton_vtable_callback_hitButton
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = fcQToolButton_vtable_callback_nextCheckState
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = fcQToolButton_vtable_callback_checkStateSet
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQToolButton_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQToolButton_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQToolButton_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQToolButton_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQToolButton_vtable_callback_focusOutEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQToolButton_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQToolButton_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQToolButton_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQToolButton_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQToolButton_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQToolButton_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQToolButton_vtable_callback_wheelEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQToolButton_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQToolButton_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQToolButton_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQToolButton_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQToolButton_vtable_callback_tabletEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQToolButton_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQToolButton_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQToolButton_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQToolButton_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQToolButton_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQToolButton_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQToolButton_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQToolButton_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQToolButton_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQToolButton_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQToolButton_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQToolButton_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQToolButton_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQToolButton_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQToolButton_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQToolButton_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQToolButton_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQToolButton_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQToolButton_vtable_callback_disconnectNotify
  gen_qtoolbutton_types.QToolButton(h: fcQToolButton_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qtoolbutton_types.QToolButton,
    vtbl: ref QToolButtonVTable = nil): gen_qtoolbutton_types.QToolButton =
  let vtbl = if vtbl == nil: new QToolButtonVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QToolButtonVTable](fcQToolButton_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQToolButton_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQToolButton_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQToolButton_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQToolButton_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQToolButton_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQToolButton_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQToolButton_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQToolButton_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQToolButton_vtable_callback_paintEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQToolButton_vtable_callback_actionEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQToolButton_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQToolButton_vtable_callback_leaveEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQToolButton_vtable_callback_timerEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQToolButton_vtable_callback_changeEvent
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = fcQToolButton_vtable_callback_hitButton
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = fcQToolButton_vtable_callback_nextCheckState
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = fcQToolButton_vtable_callback_checkStateSet
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQToolButton_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQToolButton_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQToolButton_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQToolButton_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQToolButton_vtable_callback_focusOutEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQToolButton_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQToolButton_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQToolButton_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQToolButton_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQToolButton_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQToolButton_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQToolButton_vtable_callback_wheelEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQToolButton_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQToolButton_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQToolButton_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQToolButton_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQToolButton_vtable_callback_tabletEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQToolButton_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQToolButton_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQToolButton_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQToolButton_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQToolButton_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQToolButton_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQToolButton_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQToolButton_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQToolButton_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQToolButton_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQToolButton_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQToolButton_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQToolButton_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQToolButton_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQToolButton_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQToolButton_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQToolButton_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQToolButton_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQToolButton_vtable_callback_disconnectNotify
  gen_qtoolbutton_types.QToolButton(h: fcQToolButton_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQToolButton_mvtbl = cQToolButtonVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQToolButton()[])](self.fcQToolButton_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQToolButton_method_callback_metaObject,
  metacast: fcQToolButton_method_callback_metacast,
  metacall: fcQToolButton_method_callback_metacall,
  sizeHint: fcQToolButton_method_callback_sizeHint,
  minimumSizeHint: fcQToolButton_method_callback_minimumSizeHint,
  event: fcQToolButton_method_callback_event,
  mousePressEvent: fcQToolButton_method_callback_mousePressEvent,
  mouseReleaseEvent: fcQToolButton_method_callback_mouseReleaseEvent,
  paintEvent: fcQToolButton_method_callback_paintEvent,
  actionEvent: fcQToolButton_method_callback_actionEvent,
  enterEvent: fcQToolButton_method_callback_enterEvent,
  leaveEvent: fcQToolButton_method_callback_leaveEvent,
  timerEvent: fcQToolButton_method_callback_timerEvent,
  changeEvent: fcQToolButton_method_callback_changeEvent,
  hitButton: fcQToolButton_method_callback_hitButton,
  nextCheckState: fcQToolButton_method_callback_nextCheckState,
  checkStateSet: fcQToolButton_method_callback_checkStateSet,
  keyPressEvent: fcQToolButton_method_callback_keyPressEvent,
  keyReleaseEvent: fcQToolButton_method_callback_keyReleaseEvent,
  mouseMoveEvent: fcQToolButton_method_callback_mouseMoveEvent,
  focusInEvent: fcQToolButton_method_callback_focusInEvent,
  focusOutEvent: fcQToolButton_method_callback_focusOutEvent,
  devType: fcQToolButton_method_callback_devType,
  setVisible: fcQToolButton_method_callback_setVisible,
  heightForWidth: fcQToolButton_method_callback_heightForWidth,
  hasHeightForWidth: fcQToolButton_method_callback_hasHeightForWidth,
  paintEngine: fcQToolButton_method_callback_paintEngine,
  mouseDoubleClickEvent: fcQToolButton_method_callback_mouseDoubleClickEvent,
  wheelEvent: fcQToolButton_method_callback_wheelEvent,
  moveEvent: fcQToolButton_method_callback_moveEvent,
  resizeEvent: fcQToolButton_method_callback_resizeEvent,
  closeEvent: fcQToolButton_method_callback_closeEvent,
  contextMenuEvent: fcQToolButton_method_callback_contextMenuEvent,
  tabletEvent: fcQToolButton_method_callback_tabletEvent,
  dragEnterEvent: fcQToolButton_method_callback_dragEnterEvent,
  dragMoveEvent: fcQToolButton_method_callback_dragMoveEvent,
  dragLeaveEvent: fcQToolButton_method_callback_dragLeaveEvent,
  dropEvent: fcQToolButton_method_callback_dropEvent,
  showEvent: fcQToolButton_method_callback_showEvent,
  hideEvent: fcQToolButton_method_callback_hideEvent,
  nativeEvent: fcQToolButton_method_callback_nativeEvent,
  metric: fcQToolButton_method_callback_metric,
  initPainter: fcQToolButton_method_callback_initPainter,
  redirected: fcQToolButton_method_callback_redirected,
  sharedPainter: fcQToolButton_method_callback_sharedPainter,
  inputMethodEvent: fcQToolButton_method_callback_inputMethodEvent,
  inputMethodQuery: fcQToolButton_method_callback_inputMethodQuery,
  focusNextPrevChild: fcQToolButton_method_callback_focusNextPrevChild,
  eventFilter: fcQToolButton_method_callback_eventFilter,
  childEvent: fcQToolButton_method_callback_childEvent,
  customEvent: fcQToolButton_method_callback_customEvent,
  connectNotify: fcQToolButton_method_callback_connectNotify,
  disconnectNotify: fcQToolButton_method_callback_disconnectNotify,
)
proc create*(T: type gen_qtoolbutton_types.QToolButton,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQToolButton) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQToolButton_new(addr(cQToolButton_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qtoolbutton_types.QToolButton,
    inst: VirtualQToolButton) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQToolButton_new2(addr(cQToolButton_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qtoolbutton_types.QToolButton): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQToolButton_staticMetaObject())
