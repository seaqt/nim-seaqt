import ./Qt6Widgets_libs

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

proc fcQToolButton_metaObject(self: pointer, ): pointer {.importc: "QToolButton_metaObject".}
proc fcQToolButton_metacast(self: pointer, param1: cstring): pointer {.importc: "QToolButton_metacast".}
proc fcQToolButton_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QToolButton_metacall".}
proc fcQToolButton_tr(s: cstring): struct_miqt_string {.importc: "QToolButton_tr".}
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
proc fcQToolButton_connect_triggered(self: pointer, slot: int, callback: proc (slot: int, param1: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QToolButton_connect_triggered".}
proc fcQToolButton_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QToolButton_tr2".}
proc fcQToolButton_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QToolButton_tr3".}
type cQToolButtonVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQToolButtonVTable, self: ptr cQToolButton) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  hitButton*: proc(vtbl, self: pointer, pos: pointer): bool {.cdecl, raises: [], gcsafe.}
  checkStateSet*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  nextCheckState*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(vtbl, self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQToolButton_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QToolButton_virtualbase_metaObject".}
proc fcQToolButton_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QToolButton_virtualbase_metacast".}
proc fcQToolButton_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QToolButton_virtualbase_metacall".}
proc fcQToolButton_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QToolButton_virtualbase_sizeHint".}
proc fcQToolButton_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QToolButton_virtualbase_minimumSizeHint".}
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
proc fcQToolButton_virtualbase_checkStateSet(self: pointer, ): void {.importc: "QToolButton_virtualbase_checkStateSet".}
proc fcQToolButton_virtualbase_nextCheckState(self: pointer, ): void {.importc: "QToolButton_virtualbase_nextCheckState".}
proc fcQToolButton_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QToolButton_virtualbase_initStyleOption".}
proc fcQToolButton_virtualbase_keyPressEvent(self: pointer, e: pointer): void {.importc: "QToolButton_virtualbase_keyPressEvent".}
proc fcQToolButton_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void {.importc: "QToolButton_virtualbase_keyReleaseEvent".}
proc fcQToolButton_virtualbase_mouseMoveEvent(self: pointer, e: pointer): void {.importc: "QToolButton_virtualbase_mouseMoveEvent".}
proc fcQToolButton_virtualbase_focusInEvent(self: pointer, e: pointer): void {.importc: "QToolButton_virtualbase_focusInEvent".}
proc fcQToolButton_virtualbase_focusOutEvent(self: pointer, e: pointer): void {.importc: "QToolButton_virtualbase_focusOutEvent".}
proc fcQToolButton_virtualbase_devType(self: pointer, ): cint {.importc: "QToolButton_virtualbase_devType".}
proc fcQToolButton_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QToolButton_virtualbase_setVisible".}
proc fcQToolButton_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QToolButton_virtualbase_heightForWidth".}
proc fcQToolButton_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QToolButton_virtualbase_hasHeightForWidth".}
proc fcQToolButton_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QToolButton_virtualbase_paintEngine".}
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
proc fcQToolButton_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QToolButton_virtualbase_sharedPainter".}
proc fcQToolButton_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QToolButton_virtualbase_inputMethodEvent".}
proc fcQToolButton_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QToolButton_virtualbase_inputMethodQuery".}
proc fcQToolButton_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QToolButton_virtualbase_focusNextPrevChild".}
proc fcQToolButton_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QToolButton_virtualbase_eventFilter".}
proc fcQToolButton_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QToolButton_virtualbase_childEvent".}
proc fcQToolButton_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QToolButton_virtualbase_customEvent".}
proc fcQToolButton_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QToolButton_virtualbase_connectNotify".}
proc fcQToolButton_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QToolButton_virtualbase_disconnectNotify".}
proc fcQToolButton_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QToolButton_protectedbase_updateMicroFocus".}
proc fcQToolButton_protectedbase_create(self: pointer, ): void {.importc: "QToolButton_protectedbase_create".}
proc fcQToolButton_protectedbase_destroy(self: pointer, ): void {.importc: "QToolButton_protectedbase_destroy".}
proc fcQToolButton_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QToolButton_protectedbase_focusNextChild".}
proc fcQToolButton_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QToolButton_protectedbase_focusPreviousChild".}
proc fcQToolButton_protectedbase_sender(self: pointer, ): pointer {.importc: "QToolButton_protectedbase_sender".}
proc fcQToolButton_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QToolButton_protectedbase_senderSignalIndex".}
proc fcQToolButton_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QToolButton_protectedbase_receivers".}
proc fcQToolButton_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QToolButton_protectedbase_isSignalConnected".}
proc fcQToolButton_new(vtbl: pointer, parent: pointer): ptr cQToolButton {.importc: "QToolButton_new".}
proc fcQToolButton_new2(vtbl: pointer, ): ptr cQToolButton {.importc: "QToolButton_new2".}
proc fcQToolButton_staticMetaObject(): pointer {.importc: "QToolButton_staticMetaObject".}

proc metaObject*(self: gen_qtoolbutton_types.QToolButton, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQToolButton_metaObject(self.h), owned: false)

proc metacast*(self: gen_qtoolbutton_types.QToolButton, param1: cstring): pointer =
  fcQToolButton_metacast(self.h, param1)

proc metacall*(self: gen_qtoolbutton_types.QToolButton, param1: cint, param2: cint, param3: pointer): cint =
  fcQToolButton_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtoolbutton_types.QToolButton, s: cstring): string =
  let v_ms = fcQToolButton_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: gen_qtoolbutton_types.QToolButton, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQToolButton_sizeHint(self.h), owned: true)

proc minimumSizeHint*(self: gen_qtoolbutton_types.QToolButton, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQToolButton_minimumSizeHint(self.h), owned: true)

proc toolButtonStyle*(self: gen_qtoolbutton_types.QToolButton, ): cint =
  cint(fcQToolButton_toolButtonStyle(self.h))

proc arrowType*(self: gen_qtoolbutton_types.QToolButton, ): cint =
  cint(fcQToolButton_arrowType(self.h))

proc setArrowType*(self: gen_qtoolbutton_types.QToolButton, typeVal: cint): void =
  fcQToolButton_setArrowType(self.h, cint(typeVal))

proc setMenu*(self: gen_qtoolbutton_types.QToolButton, menu: gen_qmenu_types.QMenu): void =
  fcQToolButton_setMenu(self.h, menu.h)

proc menu*(self: gen_qtoolbutton_types.QToolButton, ): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fcQToolButton_menu(self.h), owned: false)

proc setPopupMode*(self: gen_qtoolbutton_types.QToolButton, mode: cint): void =
  fcQToolButton_setPopupMode(self.h, cint(mode))

proc popupMode*(self: gen_qtoolbutton_types.QToolButton, ): cint =
  cint(fcQToolButton_popupMode(self.h))

proc defaultAction*(self: gen_qtoolbutton_types.QToolButton, ): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQToolButton_defaultAction(self.h), owned: false)

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
proc miqt_exec_callback_cQToolButton_triggered(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QToolButtontriggeredSlot](cast[pointer](slot))
  let slotval1 = gen_qaction_types.QAction(h: param1, owned: false)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQToolButton_triggered_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QToolButtontriggeredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontriggered*(self: gen_qtoolbutton_types.QToolButton, slot: QToolButtontriggeredSlot) =
  var tmp = new QToolButtontriggeredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQToolButton_connect_triggered(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQToolButton_triggered, miqt_exec_callback_cQToolButton_triggered_release)

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
type QToolButtonnativeEventProc* = proc(self: QToolButton, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
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
proc QToolButtonmetaObject*(self: gen_qtoolbutton_types.QToolButton, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQToolButton_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQToolButton_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QToolButtonmetacast*(self: gen_qtoolbutton_types.QToolButton, param1: cstring): pointer =
  fcQToolButton_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQToolButton_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QToolButtonmetacall*(self: gen_qtoolbutton_types.QToolButton, param1: cint, param2: cint, param3: pointer): cint =
  fcQToolButton_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQToolButton_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QToolButtonsizeHint*(self: gen_qtoolbutton_types.QToolButton, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQToolButton_virtualbase_sizeHint(self.h), owned: true)

proc miqt_exec_callback_cQToolButton_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QToolButtonminimumSizeHint*(self: gen_qtoolbutton_types.QToolButton, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQToolButton_virtualbase_minimumSizeHint(self.h), owned: true)

proc miqt_exec_callback_cQToolButton_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QToolButtonevent*(self: gen_qtoolbutton_types.QToolButton, e: gen_qcoreevent_types.QEvent): bool =
  fcQToolButton_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQToolButton_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QToolButtonmousePressEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qevent_types.QMouseEvent): void =
  fcQToolButton_virtualbase_mousePressEvent(self.h, param1.h)

proc miqt_exec_callback_cQToolButton_mousePressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QToolButtonmouseReleaseEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qevent_types.QMouseEvent): void =
  fcQToolButton_virtualbase_mouseReleaseEvent(self.h, param1.h)

proc miqt_exec_callback_cQToolButton_mouseReleaseEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QToolButtonpaintEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qevent_types.QPaintEvent): void =
  fcQToolButton_virtualbase_paintEvent(self.h, param1.h)

proc miqt_exec_callback_cQToolButton_paintEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QToolButtonactionEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qevent_types.QActionEvent): void =
  fcQToolButton_virtualbase_actionEvent(self.h, param1.h)

proc miqt_exec_callback_cQToolButton_actionEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: param1, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QToolButtonenterEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qevent_types.QEnterEvent): void =
  fcQToolButton_virtualbase_enterEvent(self.h, param1.h)

proc miqt_exec_callback_cQToolButton_enterEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: param1, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QToolButtonleaveEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qcoreevent_types.QEvent): void =
  fcQToolButton_virtualbase_leaveEvent(self.h, param1.h)

proc miqt_exec_callback_cQToolButton_leaveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QToolButtontimerEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qcoreevent_types.QTimerEvent): void =
  fcQToolButton_virtualbase_timerEvent(self.h, param1.h)

proc miqt_exec_callback_cQToolButton_timerEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QToolButtonchangeEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qcoreevent_types.QEvent): void =
  fcQToolButton_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQToolButton_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QToolButtonhitButton*(self: gen_qtoolbutton_types.QToolButton, pos: gen_qpoint_types.QPoint): bool =
  fcQToolButton_virtualbase_hitButton(self.h, pos.h)

proc miqt_exec_callback_cQToolButton_hitButton(vtbl: pointer, self: pointer, pos: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: pos, owned: false)
  var virtualReturn = vtbl[].hitButton(self, slotval1)
  virtualReturn

proc QToolButtoncheckStateSet*(self: gen_qtoolbutton_types.QToolButton, ): void =
  fcQToolButton_virtualbase_checkStateSet(self.h)

proc miqt_exec_callback_cQToolButton_checkStateSet(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  vtbl[].checkStateSet(self)

proc QToolButtonnextCheckState*(self: gen_qtoolbutton_types.QToolButton, ): void =
  fcQToolButton_virtualbase_nextCheckState(self.h)

proc miqt_exec_callback_cQToolButton_nextCheckState(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  vtbl[].nextCheckState(self)

proc QToolButtoninitStyleOption*(self: gen_qtoolbutton_types.QToolButton, option: gen_qstyleoption_types.QStyleOptionToolButton): void =
  fcQToolButton_virtualbase_initStyleOption(self.h, option.h)

proc miqt_exec_callback_cQToolButton_initStyleOption(vtbl: pointer, self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionToolButton(h: option, owned: false)
  vtbl[].initStyleOption(self, slotval1)

proc QToolButtonkeyPressEvent*(self: gen_qtoolbutton_types.QToolButton, e: gen_qevent_types.QKeyEvent): void =
  fcQToolButton_virtualbase_keyPressEvent(self.h, e.h)

proc miqt_exec_callback_cQToolButton_keyPressEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QToolButtonkeyReleaseEvent*(self: gen_qtoolbutton_types.QToolButton, e: gen_qevent_types.QKeyEvent): void =
  fcQToolButton_virtualbase_keyReleaseEvent(self.h, e.h)

proc miqt_exec_callback_cQToolButton_keyReleaseEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QToolButtonmouseMoveEvent*(self: gen_qtoolbutton_types.QToolButton, e: gen_qevent_types.QMouseEvent): void =
  fcQToolButton_virtualbase_mouseMoveEvent(self.h, e.h)

proc miqt_exec_callback_cQToolButton_mouseMoveEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QToolButtonfocusInEvent*(self: gen_qtoolbutton_types.QToolButton, e: gen_qevent_types.QFocusEvent): void =
  fcQToolButton_virtualbase_focusInEvent(self.h, e.h)

proc miqt_exec_callback_cQToolButton_focusInEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QToolButtonfocusOutEvent*(self: gen_qtoolbutton_types.QToolButton, e: gen_qevent_types.QFocusEvent): void =
  fcQToolButton_virtualbase_focusOutEvent(self.h, e.h)

proc miqt_exec_callback_cQToolButton_focusOutEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QToolButtondevType*(self: gen_qtoolbutton_types.QToolButton, ): cint =
  fcQToolButton_virtualbase_devType(self.h)

proc miqt_exec_callback_cQToolButton_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QToolButtonsetVisible*(self: gen_qtoolbutton_types.QToolButton, visible: bool): void =
  fcQToolButton_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQToolButton_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QToolButtonheightForWidth*(self: gen_qtoolbutton_types.QToolButton, param1: cint): cint =
  fcQToolButton_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQToolButton_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QToolButtonhasHeightForWidth*(self: gen_qtoolbutton_types.QToolButton, ): bool =
  fcQToolButton_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQToolButton_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QToolButtonpaintEngine*(self: gen_qtoolbutton_types.QToolButton, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQToolButton_virtualbase_paintEngine(self.h), owned: false)

proc miqt_exec_callback_cQToolButton_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QToolButtonmouseDoubleClickEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QMouseEvent): void =
  fcQToolButton_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQToolButton_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QToolButtonwheelEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QWheelEvent): void =
  fcQToolButton_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQToolButton_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QToolButtonmoveEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QMoveEvent): void =
  fcQToolButton_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQToolButton_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QToolButtonresizeEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QResizeEvent): void =
  fcQToolButton_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQToolButton_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QToolButtoncloseEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QCloseEvent): void =
  fcQToolButton_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQToolButton_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QToolButtoncontextMenuEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QContextMenuEvent): void =
  fcQToolButton_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQToolButton_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QToolButtontabletEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QTabletEvent): void =
  fcQToolButton_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQToolButton_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QToolButtondragEnterEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QDragEnterEvent): void =
  fcQToolButton_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQToolButton_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QToolButtondragMoveEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QDragMoveEvent): void =
  fcQToolButton_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQToolButton_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QToolButtondragLeaveEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQToolButton_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQToolButton_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QToolButtondropEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QDropEvent): void =
  fcQToolButton_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQToolButton_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QToolButtonshowEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QShowEvent): void =
  fcQToolButton_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQToolButton_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QToolButtonhideEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qevent_types.QHideEvent): void =
  fcQToolButton_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQToolButton_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QToolButtonnativeEvent*(self: gen_qtoolbutton_types.QToolButton, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQToolButton_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQToolButton_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QToolButtonmetric*(self: gen_qtoolbutton_types.QToolButton, param1: cint): cint =
  fcQToolButton_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQToolButton_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QToolButtoninitPainter*(self: gen_qtoolbutton_types.QToolButton, painter: gen_qpainter_types.QPainter): void =
  fcQToolButton_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQToolButton_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QToolButtonredirected*(self: gen_qtoolbutton_types.QToolButton, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQToolButton_virtualbase_redirected(self.h, offset.h), owned: false)

proc miqt_exec_callback_cQToolButton_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QToolButtonsharedPainter*(self: gen_qtoolbutton_types.QToolButton, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQToolButton_virtualbase_sharedPainter(self.h), owned: false)

proc miqt_exec_callback_cQToolButton_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QToolButtoninputMethodEvent*(self: gen_qtoolbutton_types.QToolButton, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQToolButton_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQToolButton_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QToolButtoninputMethodQuery*(self: gen_qtoolbutton_types.QToolButton, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQToolButton_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc miqt_exec_callback_cQToolButton_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QToolButtonfocusNextPrevChild*(self: gen_qtoolbutton_types.QToolButton, next: bool): bool =
  fcQToolButton_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQToolButton_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QToolButtoneventFilter*(self: gen_qtoolbutton_types.QToolButton, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQToolButton_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQToolButton_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QToolButtonchildEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qcoreevent_types.QChildEvent): void =
  fcQToolButton_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQToolButton_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QToolButtoncustomEvent*(self: gen_qtoolbutton_types.QToolButton, event: gen_qcoreevent_types.QEvent): void =
  fcQToolButton_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQToolButton_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QToolButtonconnectNotify*(self: gen_qtoolbutton_types.QToolButton, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQToolButton_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQToolButton_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QToolButtondisconnectNotify*(self: gen_qtoolbutton_types.QToolButton, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQToolButton_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQToolButton_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolButtonVTable](vtbl)
  let self = QToolButton(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQToolButton* {.inheritable.} = ref object of QToolButton
  vtbl*: cQToolButtonVTable
method metaObject*(self: VirtualQToolButton, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QToolButtonmetaObject(self[])
proc miqt_exec_method_cQToolButton_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQToolButton, param1: cstring): pointer {.base.} =
  QToolButtonmetacast(self[], param1)
proc miqt_exec_method_cQToolButton_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQToolButton, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QToolButtonmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQToolButton_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method sizeHint*(self: VirtualQToolButton, ): gen_qsize_types.QSize {.base.} =
  QToolButtonsizeHint(self[])
proc miqt_exec_method_cQToolButton_sizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  var virtualReturn = vtbl.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQToolButton, ): gen_qsize_types.QSize {.base.} =
  QToolButtonminimumSizeHint(self[])
proc miqt_exec_method_cQToolButton_minimumSizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  var virtualReturn = vtbl.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQToolButton, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QToolButtonevent(self[], e)
proc miqt_exec_method_cQToolButton_event(vtbl: pointer, inst: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method mousePressEvent*(self: VirtualQToolButton, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QToolButtonmousePressEvent(self[], param1)
proc miqt_exec_method_cQToolButton_mousePressEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQToolButton, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QToolButtonmouseReleaseEvent(self[], param1)
proc miqt_exec_method_cQToolButton_mouseReleaseEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl.mouseReleaseEvent(slotval1)

method paintEvent*(self: VirtualQToolButton, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QToolButtonpaintEvent(self[], param1)
proc miqt_exec_method_cQToolButton_paintEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl.paintEvent(slotval1)

method actionEvent*(self: VirtualQToolButton, param1: gen_qevent_types.QActionEvent): void {.base.} =
  QToolButtonactionEvent(self[], param1)
proc miqt_exec_method_cQToolButton_actionEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qevent_types.QActionEvent(h: param1, owned: false)
  vtbl.actionEvent(slotval1)

method enterEvent*(self: VirtualQToolButton, param1: gen_qevent_types.QEnterEvent): void {.base.} =
  QToolButtonenterEvent(self[], param1)
proc miqt_exec_method_cQToolButton_enterEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qevent_types.QEnterEvent(h: param1, owned: false)
  vtbl.enterEvent(slotval1)

method leaveEvent*(self: VirtualQToolButton, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QToolButtonleaveEvent(self[], param1)
proc miqt_exec_method_cQToolButton_leaveEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl.leaveEvent(slotval1)

method timerEvent*(self: VirtualQToolButton, param1: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QToolButtontimerEvent(self[], param1)
proc miqt_exec_method_cQToolButton_timerEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  vtbl.timerEvent(slotval1)

method changeEvent*(self: VirtualQToolButton, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QToolButtonchangeEvent(self[], param1)
proc miqt_exec_method_cQToolButton_changeEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl.changeEvent(slotval1)

method hitButton*(self: VirtualQToolButton, pos: gen_qpoint_types.QPoint): bool {.base.} =
  QToolButtonhitButton(self[], pos)
proc miqt_exec_method_cQToolButton_hitButton(vtbl: pointer, inst: pointer, pos: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qpoint_types.QPoint(h: pos, owned: false)
  var virtualReturn = vtbl.hitButton(slotval1)
  virtualReturn

method checkStateSet*(self: VirtualQToolButton, ): void {.base.} =
  QToolButtoncheckStateSet(self[])
proc miqt_exec_method_cQToolButton_checkStateSet(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  vtbl.checkStateSet()

method nextCheckState*(self: VirtualQToolButton, ): void {.base.} =
  QToolButtonnextCheckState(self[])
proc miqt_exec_method_cQToolButton_nextCheckState(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  vtbl.nextCheckState()

method initStyleOption*(self: VirtualQToolButton, option: gen_qstyleoption_types.QStyleOptionToolButton): void {.base.} =
  QToolButtoninitStyleOption(self[], option)
proc miqt_exec_method_cQToolButton_initStyleOption(vtbl: pointer, inst: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qstyleoption_types.QStyleOptionToolButton(h: option, owned: false)
  vtbl.initStyleOption(slotval1)

method keyPressEvent*(self: VirtualQToolButton, e: gen_qevent_types.QKeyEvent): void {.base.} =
  QToolButtonkeyPressEvent(self[], e)
proc miqt_exec_method_cQToolButton_keyPressEvent(vtbl: pointer, inst: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  vtbl.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQToolButton, e: gen_qevent_types.QKeyEvent): void {.base.} =
  QToolButtonkeyReleaseEvent(self[], e)
proc miqt_exec_method_cQToolButton_keyReleaseEvent(vtbl: pointer, inst: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  vtbl.keyReleaseEvent(slotval1)

method mouseMoveEvent*(self: VirtualQToolButton, e: gen_qevent_types.QMouseEvent): void {.base.} =
  QToolButtonmouseMoveEvent(self[], e)
proc miqt_exec_method_cQToolButton_mouseMoveEvent(vtbl: pointer, inst: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl.mouseMoveEvent(slotval1)

method focusInEvent*(self: VirtualQToolButton, e: gen_qevent_types.QFocusEvent): void {.base.} =
  QToolButtonfocusInEvent(self[], e)
proc miqt_exec_method_cQToolButton_focusInEvent(vtbl: pointer, inst: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  vtbl.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQToolButton, e: gen_qevent_types.QFocusEvent): void {.base.} =
  QToolButtonfocusOutEvent(self[], e)
proc miqt_exec_method_cQToolButton_focusOutEvent(vtbl: pointer, inst: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  vtbl.focusOutEvent(slotval1)

method devType*(self: VirtualQToolButton, ): cint {.base.} =
  QToolButtondevType(self[])
proc miqt_exec_method_cQToolButton_devType(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  var virtualReturn = vtbl.devType()
  virtualReturn

method setVisible*(self: VirtualQToolButton, visible: bool): void {.base.} =
  QToolButtonsetVisible(self[], visible)
proc miqt_exec_method_cQToolButton_setVisible(vtbl: pointer, inst: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = visible
  vtbl.setVisible(slotval1)

method heightForWidth*(self: VirtualQToolButton, param1: cint): cint {.base.} =
  QToolButtonheightForWidth(self[], param1)
proc miqt_exec_method_cQToolButton_heightForWidth(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQToolButton, ): bool {.base.} =
  QToolButtonhasHeightForWidth(self[])
proc miqt_exec_method_cQToolButton_hasHeightForWidth(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  var virtualReturn = vtbl.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQToolButton, ): gen_qpaintengine_types.QPaintEngine {.base.} =
  QToolButtonpaintEngine(self[])
proc miqt_exec_method_cQToolButton_paintEngine(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  var virtualReturn = vtbl.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mouseDoubleClickEvent*(self: VirtualQToolButton, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QToolButtonmouseDoubleClickEvent(self[], event)
proc miqt_exec_method_cQToolButton_mouseDoubleClickEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseDoubleClickEvent(slotval1)

method wheelEvent*(self: VirtualQToolButton, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QToolButtonwheelEvent(self[], event)
proc miqt_exec_method_cQToolButton_wheelEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl.wheelEvent(slotval1)

method moveEvent*(self: VirtualQToolButton, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QToolButtonmoveEvent(self[], event)
proc miqt_exec_method_cQToolButton_moveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl.moveEvent(slotval1)

method resizeEvent*(self: VirtualQToolButton, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QToolButtonresizeEvent(self[], event)
proc miqt_exec_method_cQToolButton_resizeEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl.resizeEvent(slotval1)

method closeEvent*(self: VirtualQToolButton, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QToolButtoncloseEvent(self[], event)
proc miqt_exec_method_cQToolButton_closeEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl.closeEvent(slotval1)

method contextMenuEvent*(self: VirtualQToolButton, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QToolButtoncontextMenuEvent(self[], event)
proc miqt_exec_method_cQToolButton_contextMenuEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl.contextMenuEvent(slotval1)

method tabletEvent*(self: VirtualQToolButton, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QToolButtontabletEvent(self[], event)
proc miqt_exec_method_cQToolButton_tabletEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl.tabletEvent(slotval1)

method dragEnterEvent*(self: VirtualQToolButton, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QToolButtondragEnterEvent(self[], event)
proc miqt_exec_method_cQToolButton_dragEnterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQToolButton, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QToolButtondragMoveEvent(self[], event)
proc miqt_exec_method_cQToolButton_dragMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQToolButton, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QToolButtondragLeaveEvent(self[], event)
proc miqt_exec_method_cQToolButton_dragLeaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQToolButton, event: gen_qevent_types.QDropEvent): void {.base.} =
  QToolButtondropEvent(self[], event)
proc miqt_exec_method_cQToolButton_dropEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl.dropEvent(slotval1)

method showEvent*(self: VirtualQToolButton, event: gen_qevent_types.QShowEvent): void {.base.} =
  QToolButtonshowEvent(self[], event)
proc miqt_exec_method_cQToolButton_showEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl.showEvent(slotval1)

method hideEvent*(self: VirtualQToolButton, event: gen_qevent_types.QHideEvent): void {.base.} =
  QToolButtonhideEvent(self[], event)
proc miqt_exec_method_cQToolButton_hideEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl.hideEvent(slotval1)

method nativeEvent*(self: VirtualQToolButton, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QToolButtonnativeEvent(self[], eventType, message, resultVal)
proc miqt_exec_method_cQToolButton_nativeEvent(vtbl: pointer, inst: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQToolButton, param1: cint): cint {.base.} =
  QToolButtonmetric(self[], param1)
proc miqt_exec_method_cQToolButton_metric(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQToolButton, painter: gen_qpainter_types.QPainter): void {.base.} =
  QToolButtoninitPainter(self[], painter)
proc miqt_exec_method_cQToolButton_initPainter(vtbl: pointer, inst: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl.initPainter(slotval1)

method redirected*(self: VirtualQToolButton, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QToolButtonredirected(self[], offset)
proc miqt_exec_method_cQToolButton_redirected(vtbl: pointer, inst: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQToolButton, ): gen_qpainter_types.QPainter {.base.} =
  QToolButtonsharedPainter(self[])
proc miqt_exec_method_cQToolButton_sharedPainter(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  var virtualReturn = vtbl.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQToolButton, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QToolButtoninputMethodEvent(self[], param1)
proc miqt_exec_method_cQToolButton_inputMethodEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQToolButton, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QToolButtoninputMethodQuery(self[], param1)
proc miqt_exec_method_cQToolButton_inputMethodQuery(vtbl: pointer, inst: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQToolButton, next: bool): bool {.base.} =
  QToolButtonfocusNextPrevChild(self[], next)
proc miqt_exec_method_cQToolButton_focusNextPrevChild(vtbl: pointer, inst: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = next
  var virtualReturn = vtbl.focusNextPrevChild(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQToolButton, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QToolButtoneventFilter(self[], watched, event)
proc miqt_exec_method_cQToolButton_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method childEvent*(self: VirtualQToolButton, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QToolButtonchildEvent(self[], event)
proc miqt_exec_method_cQToolButton_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQToolButton, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QToolButtoncustomEvent(self[], event)
proc miqt_exec_method_cQToolButton_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQToolButton, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QToolButtonconnectNotify(self[], signal)
proc miqt_exec_method_cQToolButton_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQToolButton, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QToolButtondisconnectNotify(self[], signal)
proc miqt_exec_method_cQToolButton_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQToolButton](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc updateMicroFocus*(self: gen_qtoolbutton_types.QToolButton, ): void =
  fcQToolButton_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qtoolbutton_types.QToolButton, ): void =
  fcQToolButton_protectedbase_create(self.h)

proc destroy*(self: gen_qtoolbutton_types.QToolButton, ): void =
  fcQToolButton_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qtoolbutton_types.QToolButton, ): bool =
  fcQToolButton_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qtoolbutton_types.QToolButton, ): bool =
  fcQToolButton_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qtoolbutton_types.QToolButton, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQToolButton_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qtoolbutton_types.QToolButton, ): cint =
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
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQToolButtonVTable, _: ptr cQToolButton) {.cdecl.} =
    let vtbl = cast[ref QToolButtonVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQToolButton_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQToolButton_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQToolButton_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQToolButton_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQToolButton_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQToolButton_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQToolButton_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQToolButton_mouseReleaseEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQToolButton_paintEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQToolButton_actionEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQToolButton_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQToolButton_leaveEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQToolButton_timerEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQToolButton_changeEvent
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = miqt_exec_callback_cQToolButton_hitButton
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = miqt_exec_callback_cQToolButton_checkStateSet
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = miqt_exec_callback_cQToolButton_nextCheckState
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQToolButton_initStyleOption
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQToolButton_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQToolButton_keyReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQToolButton_mouseMoveEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQToolButton_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQToolButton_focusOutEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQToolButton_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQToolButton_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQToolButton_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQToolButton_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQToolButton_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQToolButton_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQToolButton_wheelEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQToolButton_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQToolButton_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQToolButton_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQToolButton_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQToolButton_tabletEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQToolButton_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQToolButton_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQToolButton_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQToolButton_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQToolButton_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQToolButton_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQToolButton_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQToolButton_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQToolButton_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQToolButton_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQToolButton_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQToolButton_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQToolButton_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQToolButton_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQToolButton_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQToolButton_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQToolButton_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQToolButton_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQToolButton_disconnectNotify
  gen_qtoolbutton_types.QToolButton(h: fcQToolButton_new(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qtoolbutton_types.QToolButton,
    vtbl: ref QToolButtonVTable = nil): gen_qtoolbutton_types.QToolButton =
  let vtbl = if vtbl == nil: new QToolButtonVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQToolButtonVTable, _: ptr cQToolButton) {.cdecl.} =
    let vtbl = cast[ref QToolButtonVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQToolButton_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQToolButton_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQToolButton_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQToolButton_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQToolButton_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQToolButton_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQToolButton_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQToolButton_mouseReleaseEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQToolButton_paintEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQToolButton_actionEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQToolButton_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQToolButton_leaveEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQToolButton_timerEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQToolButton_changeEvent
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = miqt_exec_callback_cQToolButton_hitButton
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = miqt_exec_callback_cQToolButton_checkStateSet
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = miqt_exec_callback_cQToolButton_nextCheckState
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQToolButton_initStyleOption
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQToolButton_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQToolButton_keyReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQToolButton_mouseMoveEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQToolButton_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQToolButton_focusOutEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQToolButton_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQToolButton_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQToolButton_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQToolButton_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQToolButton_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQToolButton_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQToolButton_wheelEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQToolButton_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQToolButton_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQToolButton_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQToolButton_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQToolButton_tabletEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQToolButton_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQToolButton_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQToolButton_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQToolButton_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQToolButton_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQToolButton_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQToolButton_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQToolButton_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQToolButton_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQToolButton_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQToolButton_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQToolButton_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQToolButton_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQToolButton_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQToolButton_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQToolButton_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQToolButton_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQToolButton_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQToolButton_disconnectNotify
  gen_qtoolbutton_types.QToolButton(h: fcQToolButton_new2(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qtoolbutton_types.QToolButton,
    parent: gen_qwidget_types.QWidget,
    vtbl: VirtualQToolButton) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQToolButtonVTable, _: ptr cQToolButton) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQToolButton()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQToolButton_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQToolButton_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQToolButton_metacall
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQToolButton_sizeHint
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQToolButton_minimumSizeHint
  vtbl[].vtbl.event = miqt_exec_method_cQToolButton_event
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQToolButton_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQToolButton_mouseReleaseEvent
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQToolButton_paintEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQToolButton_actionEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQToolButton_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQToolButton_leaveEvent
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQToolButton_timerEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQToolButton_changeEvent
  vtbl[].vtbl.hitButton = miqt_exec_method_cQToolButton_hitButton
  vtbl[].vtbl.checkStateSet = miqt_exec_method_cQToolButton_checkStateSet
  vtbl[].vtbl.nextCheckState = miqt_exec_method_cQToolButton_nextCheckState
  vtbl[].vtbl.initStyleOption = miqt_exec_method_cQToolButton_initStyleOption
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQToolButton_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQToolButton_keyReleaseEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQToolButton_mouseMoveEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQToolButton_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQToolButton_focusOutEvent
  vtbl[].vtbl.devType = miqt_exec_method_cQToolButton_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQToolButton_setVisible
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQToolButton_heightForWidth
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQToolButton_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQToolButton_paintEngine
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQToolButton_mouseDoubleClickEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQToolButton_wheelEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQToolButton_moveEvent
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQToolButton_resizeEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQToolButton_closeEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQToolButton_contextMenuEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQToolButton_tabletEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQToolButton_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQToolButton_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQToolButton_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQToolButton_dropEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQToolButton_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQToolButton_hideEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQToolButton_nativeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQToolButton_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQToolButton_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQToolButton_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQToolButton_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQToolButton_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQToolButton_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQToolButton_focusNextPrevChild
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQToolButton_eventFilter
  vtbl[].vtbl.childEvent = miqt_exec_method_cQToolButton_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQToolButton_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQToolButton_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQToolButton_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQToolButton_new(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qtoolbutton_types.QToolButton,
    vtbl: VirtualQToolButton) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQToolButtonVTable, _: ptr cQToolButton) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQToolButton()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQToolButton, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQToolButton_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQToolButton_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQToolButton_metacall
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQToolButton_sizeHint
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQToolButton_minimumSizeHint
  vtbl[].vtbl.event = miqt_exec_method_cQToolButton_event
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQToolButton_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQToolButton_mouseReleaseEvent
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQToolButton_paintEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQToolButton_actionEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQToolButton_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQToolButton_leaveEvent
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQToolButton_timerEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQToolButton_changeEvent
  vtbl[].vtbl.hitButton = miqt_exec_method_cQToolButton_hitButton
  vtbl[].vtbl.checkStateSet = miqt_exec_method_cQToolButton_checkStateSet
  vtbl[].vtbl.nextCheckState = miqt_exec_method_cQToolButton_nextCheckState
  vtbl[].vtbl.initStyleOption = miqt_exec_method_cQToolButton_initStyleOption
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQToolButton_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQToolButton_keyReleaseEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQToolButton_mouseMoveEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQToolButton_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQToolButton_focusOutEvent
  vtbl[].vtbl.devType = miqt_exec_method_cQToolButton_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQToolButton_setVisible
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQToolButton_heightForWidth
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQToolButton_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQToolButton_paintEngine
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQToolButton_mouseDoubleClickEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQToolButton_wheelEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQToolButton_moveEvent
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQToolButton_resizeEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQToolButton_closeEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQToolButton_contextMenuEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQToolButton_tabletEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQToolButton_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQToolButton_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQToolButton_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQToolButton_dropEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQToolButton_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQToolButton_hideEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQToolButton_nativeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQToolButton_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQToolButton_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQToolButton_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQToolButton_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQToolButton_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQToolButton_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQToolButton_focusNextPrevChild
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQToolButton_eventFilter
  vtbl[].vtbl.childEvent = miqt_exec_method_cQToolButton_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQToolButton_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQToolButton_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQToolButton_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQToolButton_new2(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qtoolbutton_types.QToolButton): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQToolButton_staticMetaObject())
