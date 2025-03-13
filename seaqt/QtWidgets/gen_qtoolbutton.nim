import ./Qt6Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6Widgets") & " -fPIC"
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
  ../QtGui/gen_qaction_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ./gen_qabstractbutton,
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
  gen_qaction_types,
  gen_qevent_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qabstractbutton,
  gen_qmenu_types,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQToolButton*{.exportc: "QToolButton", incompleteStruct.} = object

proc fcQToolButton_metaObject(self: pointer): pointer {.importc: "QToolButton_metaObject".}
proc fcQToolButton_metacast(self: pointer, param1: cstring): pointer {.importc: "QToolButton_metacast".}
proc fcQToolButton_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QToolButton_metacall".}
proc fcQToolButton_tr(s: cstring): struct_miqt_string {.importc: "QToolButton_tr".}
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
  checkStateSet*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  nextCheckState*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
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
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
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
proc fcQToolButton_virtualbase_checkStateSet(self: pointer): void {.importc: "QToolButton_virtualbase_checkStateSet".}
proc fcQToolButton_virtualbase_nextCheckState(self: pointer): void {.importc: "QToolButton_virtualbase_nextCheckState".}
proc fcQToolButton_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QToolButton_virtualbase_initStyleOption".}
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
proc fcQToolButton_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QToolButton_virtualbase_nativeEvent".}
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
proc cQToolButton_slot_callback_triggered(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QToolButtontriggeredSlot](cast[pointer](slot))
  let slotval1 = gen_qaction_types.QAction(h: param1, owned: false)

  nimfunc[](slotval1)

proc cQToolButton_slot_callback_triggered_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QToolButtontriggeredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontriggered*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtontriggeredSlot) =
  var tmp = new QToolButtontriggeredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_connect_triggered(self.h, cast[int](addr tmp[]), cQToolButton_slot_callback_triggered, cQToolButton_slot_callback_triggered_release)

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
type QToolButtonenterEventProc* = proc(self: QToolButton, param1: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QToolButtonleaveEventProc* = proc(self: QToolButton, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QToolButtontimerEventProc* = proc(self: QToolButton, param1: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QToolButtonchangeEventProc* = proc(self: QToolButton, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QToolButtonhitButtonProc* = proc(self: QToolButton, pos: gen_qpoint_types.QPoint): bool {.raises: [], gcsafe.}
type QToolButtoncheckStateSetProc* = proc(self: QToolButton): void {.raises: [], gcsafe.}
type QToolButtonnextCheckStateProc* = proc(self: QToolButton): void {.raises: [], gcsafe.}
type QToolButtoninitStyleOptionProc* = proc(self: QToolButton, option: gen_qstyleoption_types.QStyleOptionToolButton): void {.raises: [], gcsafe.}
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
type QToolButtonnativeEventProc* = proc(self: QToolButton, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
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
  checkStateSet*: QToolButtoncheckStateSetProc
  nextCheckState*: QToolButtonnextCheckStateProc
  initStyleOption*: QToolButtoninitStyleOptionProc
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

proc cQToolButton_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QToolButtonmetacast*(self: gen_qtoolbutton_types.QToolButton, param1: cstring): pointer =
  fcQToolButton_virtualbase_metacast(self.h, param1)

proc cQToolButton_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QToolButtonmetacall*(self: gen_qtoolbutton_types.QToolButton, param1: cint, param2: cint, param3: pointer): cint =
  fcQToolButton_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQToolButton_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QToolButtonsizeHint*(self: gen_qtoolbutton_types.QToolButton): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQToolButton_virtualbase_sizeHint(self.h), owned: true)

proc cQToolButton_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QToolButtonminimumSizeHint*(self: gen_qtoolbutton_types.QToolButton): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQToolButton_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQToolButton_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QToolButtonevent*(self: gen_qtoolbutton_types.QToolButton, e: gen_qcoreevent_types.QEvent): bool =
  fcQToolButton_virtualbase_event(self.h, e.h)

proc cQToolButton_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QToolButtonmousePressEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qevent_types.QMouseEvent): void =
  fcQToolButton_virtualbase_mousePressEvent(self.h, param1.h)

proc cQToolButton_vtable_callback_mousePressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QToolButtonmouseReleaseEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qevent_types.QMouseEvent): void =
  fcQToolButton_virtualbase_mouseReleaseEvent(self.h, param1.h)

proc cQToolButton_vtable_callback_mouseReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QToolButtonpaintEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qevent_types.QPaintEvent): void =
  fcQToolButton_virtualbase_paintEvent(self.h, param1.h)

proc cQToolButton_vtable_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QToolButtonactionEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qevent_types.QActionEvent): void =
  fcQToolButton_virtualbase_actionEvent(self.h, param1.h)

proc cQToolButton_vtable_callback_actionEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: param1, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QToolButtonenterEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qevent_types.QEnterEvent): void =
  fcQToolButton_virtualbase_enterEvent(self.h, param1.h)

proc cQToolButton_vtable_callback_enterEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: param1, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QToolButtonleaveEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qcoreevent_types.QEvent): void =
  fcQToolButton_virtualbase_leaveEvent(self.h, param1.h)

proc cQToolButton_vtable_callback_leaveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QToolButtontimerEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qcoreevent_types.QTimerEvent): void =
  fcQToolButton_virtualbase_timerEvent(self.h, param1.h)

proc cQToolButton_vtable_callback_timerEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QToolButtonchangeEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qcoreevent_types.QEvent): void =
  fcQToolButton_virtualbase_changeEvent(self.h, param1.h)

proc cQToolButton_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QToolButtonhitButton*(self: gen_qtoolbutton_types.QToolButton, pos: gen_qpoint_types.QPoint): bool =
  fcQToolButton_virtualbase_hitButton(self.h, pos.h)

proc cQToolButton_vtable_callback_hitButton(self: pointer, pos: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: pos, owned: false)
  var virtualReturn = vtbl[].hitButton(self, slotval1)
  virtualReturn

proc QToolButtoncheckStateSet*(self: gen_qtoolbutton_types.QToolButton): void =
  fcQToolButton_virtualbase_checkStateSet(self.h)

proc cQToolButton_vtable_callback_checkStateSet(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  vtbl[].checkStateSet(self)

proc QToolButtonnextCheckState*(self: gen_qtoolbutton_types.QToolButton): void =
  fcQToolButton_virtualbase_nextCheckState(self.h)

proc cQToolButton_vtable_callback_nextCheckState(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  vtbl[].nextCheckState(self)

proc QToolButtoninitStyleOption*(self: gen_qtoolbutton_types.QToolButton, option: gen_qstyleoption_types.QStyleOptionToolButton): void =
  fcQToolButton_virtualbase_initStyleOption(self.h, option.h)

proc cQToolButton_vtable_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionToolButton(h: option, owned: false)
  vtbl[].initStyleOption(self, slotval1)

proc QToolButtonkeyPressEvent*(self: gen_qtoolbutton_types.QToolButton, e: gen_qevent_types.QKeyEvent): void =
  fcQToolButton_virtualbase_keyPressEvent(self.h, e.h)

proc cQToolButton_vtable_callback_keyPressEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QToolButtonkeyReleaseEvent*(self: gen_qtoolbutton_types.QToolButton, e: gen_qevent_types.QKeyEvent): void =
  fcQToolButton_virtualbase_keyReleaseEvent(self.h, e.h)

proc cQToolButton_vtable_callback_keyReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QToolButtonmouseMoveEvent*(self: gen_qtoolbutton_types.QToolButton, e: gen_qevent_types.QMouseEvent): void =
  fcQToolButton_virtualbase_mouseMoveEvent(self.h, e.h)

proc cQToolButton_vtable_callback_mouseMoveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QToolButtonfocusInEvent*(self: gen_qtoolbutton_types.QToolButton, e: gen_qevent_types.QFocusEvent): void =
  fcQToolButton_virtualbase_focusInEvent(self.h, e.h)

proc cQToolButton_vtable_callback_focusInEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QToolButtonfocusOutEvent*(self: gen_qtoolbutton_types.QToolButton, e: gen_qevent_types.QFocusEvent): void =
  fcQToolButton_virtualbase_focusOutEvent(self.h, e.h)

proc cQToolButton_vtable_callback_focusOutEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QToolButtondevType*(self: gen_qtoolbutton_types.QToolButton): cint =
  fcQToolButton_virtualbase_devType(self.h)

proc cQToolButton_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QToolButtonsetVisible*(self: gen_qtoolbutton_types.QToolButton, visible: bool): void =
  fcQToolButton_virtualbase_setVisible(self.h, visible)

proc cQToolButton_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QToolButtonheightForWidth*(self: gen_qtoolbutton_types.QToolButton, param1: cint): cint =
  fcQToolButton_virtualbase_heightForWidth(self.h, param1)

proc cQToolButton_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QToolButtonhasHeightForWidth*(self: gen_qtoolbutton_types.QToolButton): bool =
  fcQToolButton_virtualbase_hasHeightForWidth(self.h)

proc cQToolButton_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QToolButtonpaintEngine*(self: gen_qtoolbutton_types.QToolButton): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQToolButton_virtualbase_paintEngine(self.h), owned: false)

proc cQToolButton_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QToolButtonmouseDoubleClickEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QMouseEvent): void =
  fcQToolButton_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQToolButton_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QToolButtonwheelEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QWheelEvent): void =
  fcQToolButton_virtualbase_wheelEvent(self.h, event.h)

proc cQToolButton_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QToolButtonmoveEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QMoveEvent): void =
  fcQToolButton_virtualbase_moveEvent(self.h, event.h)

proc cQToolButton_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QToolButtonresizeEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QResizeEvent): void =
  fcQToolButton_virtualbase_resizeEvent(self.h, event.h)

proc cQToolButton_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QToolButtoncloseEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QCloseEvent): void =
  fcQToolButton_virtualbase_closeEvent(self.h, event.h)

proc cQToolButton_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QToolButtoncontextMenuEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QContextMenuEvent): void =
  fcQToolButton_virtualbase_contextMenuEvent(self.h, event.h)

proc cQToolButton_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QToolButtontabletEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QTabletEvent): void =
  fcQToolButton_virtualbase_tabletEvent(self.h, event.h)

proc cQToolButton_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QToolButtondragEnterEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QDragEnterEvent): void =
  fcQToolButton_virtualbase_dragEnterEvent(self.h, event.h)

proc cQToolButton_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QToolButtondragMoveEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QDragMoveEvent): void =
  fcQToolButton_virtualbase_dragMoveEvent(self.h, event.h)

proc cQToolButton_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QToolButtondragLeaveEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQToolButton_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQToolButton_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QToolButtondropEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QDropEvent): void =
  fcQToolButton_virtualbase_dropEvent(self.h, event.h)

proc cQToolButton_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QToolButtonshowEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QShowEvent): void =
  fcQToolButton_virtualbase_showEvent(self.h, event.h)

proc cQToolButton_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QToolButtonhideEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QHideEvent): void =
  fcQToolButton_virtualbase_hideEvent(self.h, event.h)

proc cQToolButton_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QToolButtonnativeEvent*(self: gen_qtoolbutton_types.QToolButton, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQToolButton_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQToolButton_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
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

proc QToolButtonmetric*(self: gen_qtoolbutton_types.QToolButton, param1: cint): cint =
  fcQToolButton_virtualbase_metric(self.h, cint(param1))

proc cQToolButton_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QToolButtoninitPainter*(self: gen_qtoolbutton_types.QToolButton, painter: gen_qpainter_types.QPainter): void =
  fcQToolButton_virtualbase_initPainter(self.h, painter.h)

proc cQToolButton_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QToolButtonredirected*(self: gen_qtoolbutton_types.QToolButton, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQToolButton_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQToolButton_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QToolButtonsharedPainter*(self: gen_qtoolbutton_types.QToolButton): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQToolButton_virtualbase_sharedPainter(self.h), owned: false)

proc cQToolButton_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QToolButtoninputMethodEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQToolButton_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQToolButton_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QToolButtoninputMethodQuery*(self: gen_qtoolbutton_types.QToolButton, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQToolButton_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQToolButton_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QToolButtonfocusNextPrevChild*(self: gen_qtoolbutton_types.QToolButton, next: bool): bool =
  fcQToolButton_virtualbase_focusNextPrevChild(self.h, next)

proc cQToolButton_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QToolButtoneventFilter*(self: gen_qtoolbutton_types.QToolButton, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQToolButton_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQToolButton_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QToolButtonchildEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qcoreevent_types.QChildEvent): void =
  fcQToolButton_virtualbase_childEvent(self.h, event.h)

proc cQToolButton_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QToolButtoncustomEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qcoreevent_types.QEvent): void =
  fcQToolButton_virtualbase_customEvent(self.h, event.h)

proc cQToolButton_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QToolButtonconnectNotify*(self: gen_qtoolbutton_types.QToolButton, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQToolButton_virtualbase_connectNotify(self.h, signal.h)

proc cQToolButton_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QToolButtondisconnectNotify*(self: gen_qtoolbutton_types.QToolButton, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQToolButton_virtualbase_disconnectNotify(self.h, signal.h)

proc cQToolButton_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](fcQToolButton_vdata(self))
  let self = QToolButton(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQToolButton* {.inheritable.} = ref object of QToolButton
  vtbl*: cQToolButtonVTable
method metaObject*(self: VirtualQToolButton): gen_qobjectdefs_types.QMetaObject {.base.} =
  QToolButtonmetaObject(self[])
proc cQToolButton_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQToolButton, param1: cstring): pointer {.base.} =
  QToolButtonmetacast(self[], param1)
proc cQToolButton_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQToolButton, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QToolButtonmetacall(self[], param1, param2, param3)
proc cQToolButton_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method sizeHint*(self: VirtualQToolButton): gen_qsize_types.QSize {.base.} =
  QToolButtonsizeHint(self[])
proc cQToolButton_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQToolButton): gen_qsize_types.QSize {.base.} =
  QToolButtonminimumSizeHint(self[])
proc cQToolButton_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQToolButton, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QToolButtonevent(self[], e)
proc cQToolButton_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method mousePressEvent*(self: VirtualQToolButton, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QToolButtonmousePressEvent(self[], param1)
proc cQToolButton_method_callback_mousePressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQToolButton, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QToolButtonmouseReleaseEvent(self[], param1)
proc cQToolButton_method_callback_mouseReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mouseReleaseEvent(slotval1)

method paintEvent*(self: VirtualQToolButton, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QToolButtonpaintEvent(self[], param1)
proc cQToolButton_method_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  inst.paintEvent(slotval1)

method actionEvent*(self: VirtualQToolButton, param1: gen_qevent_types.QActionEvent): void {.base.} =
  QToolButtonactionEvent(self[], param1)
proc cQToolButton_method_callback_actionEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: param1, owned: false)
  inst.actionEvent(slotval1)

method enterEvent*(self: VirtualQToolButton, param1: gen_qevent_types.QEnterEvent): void {.base.} =
  QToolButtonenterEvent(self[], param1)
proc cQToolButton_method_callback_enterEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: param1, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQToolButton, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QToolButtonleaveEvent(self[], param1)
proc cQToolButton_method_callback_leaveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.leaveEvent(slotval1)

method timerEvent*(self: VirtualQToolButton, param1: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QToolButtontimerEvent(self[], param1)
proc cQToolButton_method_callback_timerEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  inst.timerEvent(slotval1)

method changeEvent*(self: VirtualQToolButton, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QToolButtonchangeEvent(self[], param1)
proc cQToolButton_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

method hitButton*(self: VirtualQToolButton, pos: gen_qpoint_types.QPoint): bool {.base.} =
  QToolButtonhitButton(self[], pos)
proc cQToolButton_method_callback_hitButton(self: pointer, pos: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: pos, owned: false)
  var virtualReturn = inst.hitButton(slotval1)
  virtualReturn

method checkStateSet*(self: VirtualQToolButton): void {.base.} =
  QToolButtoncheckStateSet(self[])
proc cQToolButton_method_callback_checkStateSet(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  inst.checkStateSet()

method nextCheckState*(self: VirtualQToolButton): void {.base.} =
  QToolButtonnextCheckState(self[])
proc cQToolButton_method_callback_nextCheckState(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  inst.nextCheckState()

method initStyleOption*(self: VirtualQToolButton, option: gen_qstyleoption_types.QStyleOptionToolButton): void {.base.} =
  QToolButtoninitStyleOption(self[], option)
proc cQToolButton_method_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qstyleoption_types.QStyleOptionToolButton(h: option, owned: false)
  inst.initStyleOption(slotval1)

method keyPressEvent*(self: VirtualQToolButton, e: gen_qevent_types.QKeyEvent): void {.base.} =
  QToolButtonkeyPressEvent(self[], e)
proc cQToolButton_method_callback_keyPressEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  inst.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQToolButton, e: gen_qevent_types.QKeyEvent): void {.base.} =
  QToolButtonkeyReleaseEvent(self[], e)
proc cQToolButton_method_callback_keyReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  inst.keyReleaseEvent(slotval1)

method mouseMoveEvent*(self: VirtualQToolButton, e: gen_qevent_types.QMouseEvent): void {.base.} =
  QToolButtonmouseMoveEvent(self[], e)
proc cQToolButton_method_callback_mouseMoveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  inst.mouseMoveEvent(slotval1)

method focusInEvent*(self: VirtualQToolButton, e: gen_qevent_types.QFocusEvent): void {.base.} =
  QToolButtonfocusInEvent(self[], e)
proc cQToolButton_method_callback_focusInEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQToolButton, e: gen_qevent_types.QFocusEvent): void {.base.} =
  QToolButtonfocusOutEvent(self[], e)
proc cQToolButton_method_callback_focusOutEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  inst.focusOutEvent(slotval1)

method devType*(self: VirtualQToolButton): cint {.base.} =
  QToolButtondevType(self[])
proc cQToolButton_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQToolButton, visible: bool): void {.base.} =
  QToolButtonsetVisible(self[], visible)
proc cQToolButton_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method heightForWidth*(self: VirtualQToolButton, param1: cint): cint {.base.} =
  QToolButtonheightForWidth(self[], param1)
proc cQToolButton_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQToolButton): bool {.base.} =
  QToolButtonhasHeightForWidth(self[])
proc cQToolButton_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQToolButton): gen_qpaintengine_types.QPaintEngine {.base.} =
  QToolButtonpaintEngine(self[])
proc cQToolButton_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mouseDoubleClickEvent*(self: VirtualQToolButton, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QToolButtonmouseDoubleClickEvent(self[], event)
proc cQToolButton_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method wheelEvent*(self: VirtualQToolButton, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QToolButtonwheelEvent(self[], event)
proc cQToolButton_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method moveEvent*(self: VirtualQToolButton, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QToolButtonmoveEvent(self[], event)
proc cQToolButton_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method resizeEvent*(self: VirtualQToolButton, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QToolButtonresizeEvent(self[], event)
proc cQToolButton_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

method closeEvent*(self: VirtualQToolButton, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QToolButtoncloseEvent(self[], event)
proc cQToolButton_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method contextMenuEvent*(self: VirtualQToolButton, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QToolButtoncontextMenuEvent(self[], event)
proc cQToolButton_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

method tabletEvent*(self: VirtualQToolButton, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QToolButtontabletEvent(self[], event)
proc cQToolButton_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method dragEnterEvent*(self: VirtualQToolButton, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QToolButtondragEnterEvent(self[], event)
proc cQToolButton_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQToolButton, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QToolButtondragMoveEvent(self[], event)
proc cQToolButton_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQToolButton, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QToolButtondragLeaveEvent(self[], event)
proc cQToolButton_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQToolButton, event: gen_qevent_types.QDropEvent): void {.base.} =
  QToolButtondropEvent(self[], event)
proc cQToolButton_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method showEvent*(self: VirtualQToolButton, event: gen_qevent_types.QShowEvent): void {.base.} =
  QToolButtonshowEvent(self[], event)
proc cQToolButton_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method hideEvent*(self: VirtualQToolButton, event: gen_qevent_types.QHideEvent): void {.base.} =
  QToolButtonhideEvent(self[], event)
proc cQToolButton_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQToolButton, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QToolButtonnativeEvent(self[], eventType, message, resultVal)
proc cQToolButton_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQToolButton, param1: cint): cint {.base.} =
  QToolButtonmetric(self[], param1)
proc cQToolButton_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQToolButton, painter: gen_qpainter_types.QPainter): void {.base.} =
  QToolButtoninitPainter(self[], painter)
proc cQToolButton_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQToolButton, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QToolButtonredirected(self[], offset)
proc cQToolButton_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQToolButton): gen_qpainter_types.QPainter {.base.} =
  QToolButtonsharedPainter(self[])
proc cQToolButton_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQToolButton, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QToolButtoninputMethodEvent(self[], param1)
proc cQToolButton_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQToolButton, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QToolButtoninputMethodQuery(self[], param1)
proc cQToolButton_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQToolButton, next: bool): bool {.base.} =
  QToolButtonfocusNextPrevChild(self[], next)
proc cQToolButton_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQToolButton, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QToolButtoneventFilter(self[], watched, event)
proc cQToolButton_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method childEvent*(self: VirtualQToolButton, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QToolButtonchildEvent(self[], event)
proc cQToolButton_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQToolButton, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QToolButtoncustomEvent(self[], event)
proc cQToolButton_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQToolButton, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QToolButtonconnectNotify(self[], signal)
proc cQToolButton_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQToolButton, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QToolButtondisconnectNotify(self[], signal)
proc cQToolButton_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolButton](fcQToolButton_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc updateMicroFocus*(self: gen_qtoolbutton_types.QToolButton): void =
  fcQToolButton_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qtoolbutton_types.QToolButton): void =
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
    vtbl[].vtbl.metaObject = cQToolButton_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQToolButton_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQToolButton_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQToolButton_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQToolButton_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQToolButton_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQToolButton_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQToolButton_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQToolButton_vtable_callback_paintEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQToolButton_vtable_callback_actionEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQToolButton_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQToolButton_vtable_callback_leaveEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQToolButton_vtable_callback_timerEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQToolButton_vtable_callback_changeEvent
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = cQToolButton_vtable_callback_hitButton
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = cQToolButton_vtable_callback_checkStateSet
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = cQToolButton_vtable_callback_nextCheckState
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQToolButton_vtable_callback_initStyleOption
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQToolButton_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQToolButton_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQToolButton_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQToolButton_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQToolButton_vtable_callback_focusOutEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQToolButton_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQToolButton_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQToolButton_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQToolButton_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQToolButton_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQToolButton_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQToolButton_vtable_callback_wheelEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQToolButton_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQToolButton_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQToolButton_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQToolButton_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQToolButton_vtable_callback_tabletEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQToolButton_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQToolButton_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQToolButton_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQToolButton_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQToolButton_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQToolButton_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQToolButton_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQToolButton_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQToolButton_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQToolButton_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQToolButton_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQToolButton_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQToolButton_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQToolButton_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQToolButton_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQToolButton_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQToolButton_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQToolButton_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQToolButton_vtable_callback_disconnectNotify
  gen_qtoolbutton_types.QToolButton(h: fcQToolButton_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qtoolbutton_types.QToolButton,
    vtbl: ref QToolButtonVTable = nil): gen_qtoolbutton_types.QToolButton =
  let vtbl = if vtbl == nil: new QToolButtonVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QToolButtonVTable](fcQToolButton_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQToolButton_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQToolButton_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQToolButton_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQToolButton_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQToolButton_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQToolButton_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQToolButton_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQToolButton_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQToolButton_vtable_callback_paintEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQToolButton_vtable_callback_actionEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQToolButton_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQToolButton_vtable_callback_leaveEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQToolButton_vtable_callback_timerEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQToolButton_vtable_callback_changeEvent
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = cQToolButton_vtable_callback_hitButton
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = cQToolButton_vtable_callback_checkStateSet
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = cQToolButton_vtable_callback_nextCheckState
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQToolButton_vtable_callback_initStyleOption
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQToolButton_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQToolButton_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQToolButton_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQToolButton_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQToolButton_vtable_callback_focusOutEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQToolButton_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQToolButton_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQToolButton_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQToolButton_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQToolButton_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQToolButton_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQToolButton_vtable_callback_wheelEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQToolButton_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQToolButton_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQToolButton_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQToolButton_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQToolButton_vtable_callback_tabletEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQToolButton_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQToolButton_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQToolButton_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQToolButton_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQToolButton_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQToolButton_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQToolButton_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQToolButton_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQToolButton_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQToolButton_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQToolButton_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQToolButton_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQToolButton_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQToolButton_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQToolButton_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQToolButton_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQToolButton_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQToolButton_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQToolButton_vtable_callback_disconnectNotify
  gen_qtoolbutton_types.QToolButton(h: fcQToolButton_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQToolButton_mvtbl = cQToolButtonVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQToolButton()[])](self.fcQToolButton_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQToolButton_method_callback_metaObject,
  metacast: cQToolButton_method_callback_metacast,
  metacall: cQToolButton_method_callback_metacall,
  sizeHint: cQToolButton_method_callback_sizeHint,
  minimumSizeHint: cQToolButton_method_callback_minimumSizeHint,
  event: cQToolButton_method_callback_event,
  mousePressEvent: cQToolButton_method_callback_mousePressEvent,
  mouseReleaseEvent: cQToolButton_method_callback_mouseReleaseEvent,
  paintEvent: cQToolButton_method_callback_paintEvent,
  actionEvent: cQToolButton_method_callback_actionEvent,
  enterEvent: cQToolButton_method_callback_enterEvent,
  leaveEvent: cQToolButton_method_callback_leaveEvent,
  timerEvent: cQToolButton_method_callback_timerEvent,
  changeEvent: cQToolButton_method_callback_changeEvent,
  hitButton: cQToolButton_method_callback_hitButton,
  checkStateSet: cQToolButton_method_callback_checkStateSet,
  nextCheckState: cQToolButton_method_callback_nextCheckState,
  initStyleOption: cQToolButton_method_callback_initStyleOption,
  keyPressEvent: cQToolButton_method_callback_keyPressEvent,
  keyReleaseEvent: cQToolButton_method_callback_keyReleaseEvent,
  mouseMoveEvent: cQToolButton_method_callback_mouseMoveEvent,
  focusInEvent: cQToolButton_method_callback_focusInEvent,
  focusOutEvent: cQToolButton_method_callback_focusOutEvent,
  devType: cQToolButton_method_callback_devType,
  setVisible: cQToolButton_method_callback_setVisible,
  heightForWidth: cQToolButton_method_callback_heightForWidth,
  hasHeightForWidth: cQToolButton_method_callback_hasHeightForWidth,
  paintEngine: cQToolButton_method_callback_paintEngine,
  mouseDoubleClickEvent: cQToolButton_method_callback_mouseDoubleClickEvent,
  wheelEvent: cQToolButton_method_callback_wheelEvent,
  moveEvent: cQToolButton_method_callback_moveEvent,
  resizeEvent: cQToolButton_method_callback_resizeEvent,
  closeEvent: cQToolButton_method_callback_closeEvent,
  contextMenuEvent: cQToolButton_method_callback_contextMenuEvent,
  tabletEvent: cQToolButton_method_callback_tabletEvent,
  dragEnterEvent: cQToolButton_method_callback_dragEnterEvent,
  dragMoveEvent: cQToolButton_method_callback_dragMoveEvent,
  dragLeaveEvent: cQToolButton_method_callback_dragLeaveEvent,
  dropEvent: cQToolButton_method_callback_dropEvent,
  showEvent: cQToolButton_method_callback_showEvent,
  hideEvent: cQToolButton_method_callback_hideEvent,
  nativeEvent: cQToolButton_method_callback_nativeEvent,
  metric: cQToolButton_method_callback_metric,
  initPainter: cQToolButton_method_callback_initPainter,
  redirected: cQToolButton_method_callback_redirected,
  sharedPainter: cQToolButton_method_callback_sharedPainter,
  inputMethodEvent: cQToolButton_method_callback_inputMethodEvent,
  inputMethodQuery: cQToolButton_method_callback_inputMethodQuery,
  focusNextPrevChild: cQToolButton_method_callback_focusNextPrevChild,
  eventFilter: cQToolButton_method_callback_eventFilter,
  childEvent: cQToolButton_method_callback_childEvent,
  customEvent: cQToolButton_method_callback_customEvent,
  connectNotify: cQToolButton_method_callback_connectNotify,
  disconnectNotify: cQToolButton_method_callback_disconnectNotify,
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
