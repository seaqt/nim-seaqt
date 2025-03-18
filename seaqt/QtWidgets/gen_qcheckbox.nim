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


{.compile("gen_qcheckbox.cpp", QtWidgetsCFlags).}


import ./gen_qcheckbox_types
export gen_qcheckbox_types

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
  gen_qstyleoption_types,
  gen_qwidget_types

type cQCheckBox*{.exportc: "QCheckBox", incompleteStruct.} = object

proc fcQCheckBox_metaObject(self: pointer): pointer {.importc: "QCheckBox_metaObject".}
proc fcQCheckBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QCheckBox_metacast".}
proc fcQCheckBox_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCheckBox_metacall".}
proc fcQCheckBox_tr(s: cstring): struct_miqt_string {.importc: "QCheckBox_tr".}
proc fcQCheckBox_sizeHint(self: pointer): pointer {.importc: "QCheckBox_sizeHint".}
proc fcQCheckBox_minimumSizeHint(self: pointer): pointer {.importc: "QCheckBox_minimumSizeHint".}
proc fcQCheckBox_setTristate(self: pointer): void {.importc: "QCheckBox_setTristate".}
proc fcQCheckBox_isTristate(self: pointer): bool {.importc: "QCheckBox_isTristate".}
proc fcQCheckBox_checkState(self: pointer): cint {.importc: "QCheckBox_checkState".}
proc fcQCheckBox_setCheckState(self: pointer, state: cint): void {.importc: "QCheckBox_setCheckState".}
proc fcQCheckBox_stateChanged(self: pointer, param1: cint): void {.importc: "QCheckBox_stateChanged".}
proc fcQCheckBox_connect_stateChanged(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCheckBox_connect_stateChanged".}
proc fcQCheckBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCheckBox_tr2".}
proc fcQCheckBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCheckBox_tr3".}
proc fcQCheckBox_setTristate1(self: pointer, y: bool): void {.importc: "QCheckBox_setTristate1".}
proc fcQCheckBox_vtbl(self: pointer): pointer {.importc: "QCheckBox_vtbl".}
proc fcQCheckBox_vdata(self: pointer): pointer {.importc: "QCheckBox_vdata".}

type cQCheckBoxVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  hitButton*: proc(self: pointer, pos: pointer): bool {.cdecl, raises: [], gcsafe.}
  checkStateSet*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  nextCheckState*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
proc fcQCheckBox_virtualbase_metaObject(self: pointer): pointer {.importc: "QCheckBox_virtualbase_metaObject".}
proc fcQCheckBox_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QCheckBox_virtualbase_metacast".}
proc fcQCheckBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCheckBox_virtualbase_metacall".}
proc fcQCheckBox_virtualbase_sizeHint(self: pointer): pointer {.importc: "QCheckBox_virtualbase_sizeHint".}
proc fcQCheckBox_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QCheckBox_virtualbase_minimumSizeHint".}
proc fcQCheckBox_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QCheckBox_virtualbase_event".}
proc fcQCheckBox_virtualbase_hitButton(self: pointer, pos: pointer): bool {.importc: "QCheckBox_virtualbase_hitButton".}
proc fcQCheckBox_virtualbase_checkStateSet(self: pointer): void {.importc: "QCheckBox_virtualbase_checkStateSet".}
proc fcQCheckBox_virtualbase_nextCheckState(self: pointer): void {.importc: "QCheckBox_virtualbase_nextCheckState".}
proc fcQCheckBox_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QCheckBox_virtualbase_paintEvent".}
proc fcQCheckBox_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void {.importc: "QCheckBox_virtualbase_mouseMoveEvent".}
proc fcQCheckBox_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QCheckBox_virtualbase_initStyleOption".}
proc fcQCheckBox_virtualbase_keyPressEvent(self: pointer, e: pointer): void {.importc: "QCheckBox_virtualbase_keyPressEvent".}
proc fcQCheckBox_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void {.importc: "QCheckBox_virtualbase_keyReleaseEvent".}
proc fcQCheckBox_virtualbase_mousePressEvent(self: pointer, e: pointer): void {.importc: "QCheckBox_virtualbase_mousePressEvent".}
proc fcQCheckBox_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void {.importc: "QCheckBox_virtualbase_mouseReleaseEvent".}
proc fcQCheckBox_virtualbase_focusInEvent(self: pointer, e: pointer): void {.importc: "QCheckBox_virtualbase_focusInEvent".}
proc fcQCheckBox_virtualbase_focusOutEvent(self: pointer, e: pointer): void {.importc: "QCheckBox_virtualbase_focusOutEvent".}
proc fcQCheckBox_virtualbase_changeEvent(self: pointer, e: pointer): void {.importc: "QCheckBox_virtualbase_changeEvent".}
proc fcQCheckBox_virtualbase_timerEvent(self: pointer, e: pointer): void {.importc: "QCheckBox_virtualbase_timerEvent".}
proc fcQCheckBox_virtualbase_devType(self: pointer): cint {.importc: "QCheckBox_virtualbase_devType".}
proc fcQCheckBox_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QCheckBox_virtualbase_setVisible".}
proc fcQCheckBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QCheckBox_virtualbase_heightForWidth".}
proc fcQCheckBox_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QCheckBox_virtualbase_hasHeightForWidth".}
proc fcQCheckBox_virtualbase_paintEngine(self: pointer): pointer {.importc: "QCheckBox_virtualbase_paintEngine".}
proc fcQCheckBox_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QCheckBox_virtualbase_mouseDoubleClickEvent".}
proc fcQCheckBox_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QCheckBox_virtualbase_wheelEvent".}
proc fcQCheckBox_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QCheckBox_virtualbase_enterEvent".}
proc fcQCheckBox_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QCheckBox_virtualbase_leaveEvent".}
proc fcQCheckBox_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QCheckBox_virtualbase_moveEvent".}
proc fcQCheckBox_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QCheckBox_virtualbase_resizeEvent".}
proc fcQCheckBox_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QCheckBox_virtualbase_closeEvent".}
proc fcQCheckBox_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QCheckBox_virtualbase_contextMenuEvent".}
proc fcQCheckBox_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QCheckBox_virtualbase_tabletEvent".}
proc fcQCheckBox_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QCheckBox_virtualbase_actionEvent".}
proc fcQCheckBox_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QCheckBox_virtualbase_dragEnterEvent".}
proc fcQCheckBox_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QCheckBox_virtualbase_dragMoveEvent".}
proc fcQCheckBox_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QCheckBox_virtualbase_dragLeaveEvent".}
proc fcQCheckBox_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QCheckBox_virtualbase_dropEvent".}
proc fcQCheckBox_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QCheckBox_virtualbase_showEvent".}
proc fcQCheckBox_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QCheckBox_virtualbase_hideEvent".}
proc fcQCheckBox_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QCheckBox_virtualbase_nativeEvent".}
proc fcQCheckBox_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QCheckBox_virtualbase_metric".}
proc fcQCheckBox_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QCheckBox_virtualbase_initPainter".}
proc fcQCheckBox_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QCheckBox_virtualbase_redirected".}
proc fcQCheckBox_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QCheckBox_virtualbase_sharedPainter".}
proc fcQCheckBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QCheckBox_virtualbase_inputMethodEvent".}
proc fcQCheckBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QCheckBox_virtualbase_inputMethodQuery".}
proc fcQCheckBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QCheckBox_virtualbase_focusNextPrevChild".}
proc fcQCheckBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QCheckBox_virtualbase_eventFilter".}
proc fcQCheckBox_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QCheckBox_virtualbase_childEvent".}
proc fcQCheckBox_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QCheckBox_virtualbase_customEvent".}
proc fcQCheckBox_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QCheckBox_virtualbase_connectNotify".}
proc fcQCheckBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QCheckBox_virtualbase_disconnectNotify".}
proc fcQCheckBox_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QCheckBox_protectedbase_updateMicroFocus".}
proc fcQCheckBox_protectedbase_create(self: pointer): void {.importc: "QCheckBox_protectedbase_create".}
proc fcQCheckBox_protectedbase_destroy(self: pointer): void {.importc: "QCheckBox_protectedbase_destroy".}
proc fcQCheckBox_protectedbase_focusNextChild(self: pointer): bool {.importc: "QCheckBox_protectedbase_focusNextChild".}
proc fcQCheckBox_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QCheckBox_protectedbase_focusPreviousChild".}
proc fcQCheckBox_protectedbase_sender(self: pointer): pointer {.importc: "QCheckBox_protectedbase_sender".}
proc fcQCheckBox_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QCheckBox_protectedbase_senderSignalIndex".}
proc fcQCheckBox_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QCheckBox_protectedbase_receivers".}
proc fcQCheckBox_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QCheckBox_protectedbase_isSignalConnected".}
proc fcQCheckBox_new(vtbl, vdata: pointer, parent: pointer): ptr cQCheckBox {.importc: "QCheckBox_new".}
proc fcQCheckBox_new2(vtbl, vdata: pointer): ptr cQCheckBox {.importc: "QCheckBox_new2".}
proc fcQCheckBox_new3(vtbl, vdata: pointer, text: struct_miqt_string): ptr cQCheckBox {.importc: "QCheckBox_new3".}
proc fcQCheckBox_new4(vtbl, vdata: pointer, text: struct_miqt_string, parent: pointer): ptr cQCheckBox {.importc: "QCheckBox_new4".}
proc fcQCheckBox_staticMetaObject(): pointer {.importc: "QCheckBox_staticMetaObject".}

proc metaObject*(self: gen_qcheckbox_types.QCheckBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCheckBox_metaObject(self.h), owned: false)

proc metacast*(self: gen_qcheckbox_types.QCheckBox, param1: cstring): pointer =
  fcQCheckBox_metacast(self.h, param1)

proc metacall*(self: gen_qcheckbox_types.QCheckBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQCheckBox_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcheckbox_types.QCheckBox, s: cstring): string =
  let v_ms = fcQCheckBox_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: gen_qcheckbox_types.QCheckBox): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCheckBox_sizeHint(self.h), owned: true)

proc minimumSizeHint*(self: gen_qcheckbox_types.QCheckBox): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCheckBox_minimumSizeHint(self.h), owned: true)

proc setTristate*(self: gen_qcheckbox_types.QCheckBox): void =
  fcQCheckBox_setTristate(self.h)

proc isTristate*(self: gen_qcheckbox_types.QCheckBox): bool =
  fcQCheckBox_isTristate(self.h)

proc checkState*(self: gen_qcheckbox_types.QCheckBox): cint =
  cint(fcQCheckBox_checkState(self.h))

proc setCheckState*(self: gen_qcheckbox_types.QCheckBox, state: cint): void =
  fcQCheckBox_setCheckState(self.h, cint(state))

proc stateChanged*(self: gen_qcheckbox_types.QCheckBox, param1: cint): void =
  fcQCheckBox_stateChanged(self.h, param1)

type QCheckBoxstateChangedSlot* = proc(param1: cint)
proc fcQCheckBox_slot_callback_stateChanged(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QCheckBoxstateChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc fcQCheckBox_slot_callback_stateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCheckBoxstateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onStateChanged*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxstateChangedSlot) =
  var tmp = new QCheckBoxstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_connect_stateChanged(self.h, cast[int](addr tmp[]), fcQCheckBox_slot_callback_stateChanged, fcQCheckBox_slot_callback_stateChanged_release)

proc tr*(_: type gen_qcheckbox_types.QCheckBox, s: cstring, c: cstring): string =
  let v_ms = fcQCheckBox_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcheckbox_types.QCheckBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCheckBox_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setTristate*(self: gen_qcheckbox_types.QCheckBox, y: bool): void =
  fcQCheckBox_setTristate1(self.h, y)

type QCheckBoxmetaObjectProc* = proc(self: QCheckBox): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QCheckBoxmetacastProc* = proc(self: QCheckBox, param1: cstring): pointer {.raises: [], gcsafe.}
type QCheckBoxmetacallProc* = proc(self: QCheckBox, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QCheckBoxsizeHintProc* = proc(self: QCheckBox): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QCheckBoxminimumSizeHintProc* = proc(self: QCheckBox): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QCheckBoxeventProc* = proc(self: QCheckBox, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QCheckBoxhitButtonProc* = proc(self: QCheckBox, pos: gen_qpoint_types.QPoint): bool {.raises: [], gcsafe.}
type QCheckBoxcheckStateSetProc* = proc(self: QCheckBox): void {.raises: [], gcsafe.}
type QCheckBoxnextCheckStateProc* = proc(self: QCheckBox): void {.raises: [], gcsafe.}
type QCheckBoxpaintEventProc* = proc(self: QCheckBox, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QCheckBoxmouseMoveEventProc* = proc(self: QCheckBox, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QCheckBoxinitStyleOptionProc* = proc(self: QCheckBox, option: gen_qstyleoption_types.QStyleOptionButton): void {.raises: [], gcsafe.}
type QCheckBoxkeyPressEventProc* = proc(self: QCheckBox, e: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QCheckBoxkeyReleaseEventProc* = proc(self: QCheckBox, e: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QCheckBoxmousePressEventProc* = proc(self: QCheckBox, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QCheckBoxmouseReleaseEventProc* = proc(self: QCheckBox, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QCheckBoxfocusInEventProc* = proc(self: QCheckBox, e: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QCheckBoxfocusOutEventProc* = proc(self: QCheckBox, e: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QCheckBoxchangeEventProc* = proc(self: QCheckBox, e: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QCheckBoxtimerEventProc* = proc(self: QCheckBox, e: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QCheckBoxdevTypeProc* = proc(self: QCheckBox): cint {.raises: [], gcsafe.}
type QCheckBoxsetVisibleProc* = proc(self: QCheckBox, visible: bool): void {.raises: [], gcsafe.}
type QCheckBoxheightForWidthProc* = proc(self: QCheckBox, param1: cint): cint {.raises: [], gcsafe.}
type QCheckBoxhasHeightForWidthProc* = proc(self: QCheckBox): bool {.raises: [], gcsafe.}
type QCheckBoxpaintEngineProc* = proc(self: QCheckBox): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QCheckBoxmouseDoubleClickEventProc* = proc(self: QCheckBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QCheckBoxwheelEventProc* = proc(self: QCheckBox, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QCheckBoxenterEventProc* = proc(self: QCheckBox, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QCheckBoxleaveEventProc* = proc(self: QCheckBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QCheckBoxmoveEventProc* = proc(self: QCheckBox, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QCheckBoxresizeEventProc* = proc(self: QCheckBox, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QCheckBoxcloseEventProc* = proc(self: QCheckBox, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QCheckBoxcontextMenuEventProc* = proc(self: QCheckBox, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QCheckBoxtabletEventProc* = proc(self: QCheckBox, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QCheckBoxactionEventProc* = proc(self: QCheckBox, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QCheckBoxdragEnterEventProc* = proc(self: QCheckBox, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QCheckBoxdragMoveEventProc* = proc(self: QCheckBox, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QCheckBoxdragLeaveEventProc* = proc(self: QCheckBox, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QCheckBoxdropEventProc* = proc(self: QCheckBox, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QCheckBoxshowEventProc* = proc(self: QCheckBox, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QCheckBoxhideEventProc* = proc(self: QCheckBox, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QCheckBoxnativeEventProc* = proc(self: QCheckBox, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QCheckBoxmetricProc* = proc(self: QCheckBox, param1: cint): cint {.raises: [], gcsafe.}
type QCheckBoxinitPainterProc* = proc(self: QCheckBox, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QCheckBoxredirectedProc* = proc(self: QCheckBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QCheckBoxsharedPainterProc* = proc(self: QCheckBox): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QCheckBoxinputMethodEventProc* = proc(self: QCheckBox, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QCheckBoxinputMethodQueryProc* = proc(self: QCheckBox, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QCheckBoxfocusNextPrevChildProc* = proc(self: QCheckBox, next: bool): bool {.raises: [], gcsafe.}
type QCheckBoxeventFilterProc* = proc(self: QCheckBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QCheckBoxchildEventProc* = proc(self: QCheckBox, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QCheckBoxcustomEventProc* = proc(self: QCheckBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QCheckBoxconnectNotifyProc* = proc(self: QCheckBox, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QCheckBoxdisconnectNotifyProc* = proc(self: QCheckBox, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QCheckBoxVTable* {.inheritable, pure.} = object
  vtbl: cQCheckBoxVTable
  metaObject*: QCheckBoxmetaObjectProc
  metacast*: QCheckBoxmetacastProc
  metacall*: QCheckBoxmetacallProc
  sizeHint*: QCheckBoxsizeHintProc
  minimumSizeHint*: QCheckBoxminimumSizeHintProc
  event*: QCheckBoxeventProc
  hitButton*: QCheckBoxhitButtonProc
  checkStateSet*: QCheckBoxcheckStateSetProc
  nextCheckState*: QCheckBoxnextCheckStateProc
  paintEvent*: QCheckBoxpaintEventProc
  mouseMoveEvent*: QCheckBoxmouseMoveEventProc
  initStyleOption*: QCheckBoxinitStyleOptionProc
  keyPressEvent*: QCheckBoxkeyPressEventProc
  keyReleaseEvent*: QCheckBoxkeyReleaseEventProc
  mousePressEvent*: QCheckBoxmousePressEventProc
  mouseReleaseEvent*: QCheckBoxmouseReleaseEventProc
  focusInEvent*: QCheckBoxfocusInEventProc
  focusOutEvent*: QCheckBoxfocusOutEventProc
  changeEvent*: QCheckBoxchangeEventProc
  timerEvent*: QCheckBoxtimerEventProc
  devType*: QCheckBoxdevTypeProc
  setVisible*: QCheckBoxsetVisibleProc
  heightForWidth*: QCheckBoxheightForWidthProc
  hasHeightForWidth*: QCheckBoxhasHeightForWidthProc
  paintEngine*: QCheckBoxpaintEngineProc
  mouseDoubleClickEvent*: QCheckBoxmouseDoubleClickEventProc
  wheelEvent*: QCheckBoxwheelEventProc
  enterEvent*: QCheckBoxenterEventProc
  leaveEvent*: QCheckBoxleaveEventProc
  moveEvent*: QCheckBoxmoveEventProc
  resizeEvent*: QCheckBoxresizeEventProc
  closeEvent*: QCheckBoxcloseEventProc
  contextMenuEvent*: QCheckBoxcontextMenuEventProc
  tabletEvent*: QCheckBoxtabletEventProc
  actionEvent*: QCheckBoxactionEventProc
  dragEnterEvent*: QCheckBoxdragEnterEventProc
  dragMoveEvent*: QCheckBoxdragMoveEventProc
  dragLeaveEvent*: QCheckBoxdragLeaveEventProc
  dropEvent*: QCheckBoxdropEventProc
  showEvent*: QCheckBoxshowEventProc
  hideEvent*: QCheckBoxhideEventProc
  nativeEvent*: QCheckBoxnativeEventProc
  metric*: QCheckBoxmetricProc
  initPainter*: QCheckBoxinitPainterProc
  redirected*: QCheckBoxredirectedProc
  sharedPainter*: QCheckBoxsharedPainterProc
  inputMethodEvent*: QCheckBoxinputMethodEventProc
  inputMethodQuery*: QCheckBoxinputMethodQueryProc
  focusNextPrevChild*: QCheckBoxfocusNextPrevChildProc
  eventFilter*: QCheckBoxeventFilterProc
  childEvent*: QCheckBoxchildEventProc
  customEvent*: QCheckBoxcustomEventProc
  connectNotify*: QCheckBoxconnectNotifyProc
  disconnectNotify*: QCheckBoxdisconnectNotifyProc

proc QCheckBoxmetaObject*(self: gen_qcheckbox_types.QCheckBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCheckBox_virtualbase_metaObject(self.h), owned: false)

proc QCheckBoxmetacast*(self: gen_qcheckbox_types.QCheckBox, param1: cstring): pointer =
  fcQCheckBox_virtualbase_metacast(self.h, param1)

proc QCheckBoxmetacall*(self: gen_qcheckbox_types.QCheckBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQCheckBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QCheckBoxsizeHint*(self: gen_qcheckbox_types.QCheckBox): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCheckBox_virtualbase_sizeHint(self.h), owned: true)

proc QCheckBoxminimumSizeHint*(self: gen_qcheckbox_types.QCheckBox): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCheckBox_virtualbase_minimumSizeHint(self.h), owned: true)

proc QCheckBoxevent*(self: gen_qcheckbox_types.QCheckBox, e: gen_qcoreevent_types.QEvent): bool =
  fcQCheckBox_virtualbase_event(self.h, e.h)

proc QCheckBoxhitButton*(self: gen_qcheckbox_types.QCheckBox, pos: gen_qpoint_types.QPoint): bool =
  fcQCheckBox_virtualbase_hitButton(self.h, pos.h)

proc QCheckBoxcheckStateSet*(self: gen_qcheckbox_types.QCheckBox): void =
  fcQCheckBox_virtualbase_checkStateSet(self.h)

proc QCheckBoxnextCheckState*(self: gen_qcheckbox_types.QCheckBox): void =
  fcQCheckBox_virtualbase_nextCheckState(self.h)

proc QCheckBoxpaintEvent*(self: gen_qcheckbox_types.QCheckBox, param1: gen_qevent_types.QPaintEvent): void =
  fcQCheckBox_virtualbase_paintEvent(self.h, param1.h)

proc QCheckBoxmouseMoveEvent*(self: gen_qcheckbox_types.QCheckBox, param1: gen_qevent_types.QMouseEvent): void =
  fcQCheckBox_virtualbase_mouseMoveEvent(self.h, param1.h)

proc QCheckBoxinitStyleOption*(self: gen_qcheckbox_types.QCheckBox, option: gen_qstyleoption_types.QStyleOptionButton): void =
  fcQCheckBox_virtualbase_initStyleOption(self.h, option.h)

proc QCheckBoxkeyPressEvent*(self: gen_qcheckbox_types.QCheckBox, e: gen_qevent_types.QKeyEvent): void =
  fcQCheckBox_virtualbase_keyPressEvent(self.h, e.h)

proc QCheckBoxkeyReleaseEvent*(self: gen_qcheckbox_types.QCheckBox, e: gen_qevent_types.QKeyEvent): void =
  fcQCheckBox_virtualbase_keyReleaseEvent(self.h, e.h)

proc QCheckBoxmousePressEvent*(self: gen_qcheckbox_types.QCheckBox, e: gen_qevent_types.QMouseEvent): void =
  fcQCheckBox_virtualbase_mousePressEvent(self.h, e.h)

proc QCheckBoxmouseReleaseEvent*(self: gen_qcheckbox_types.QCheckBox, e: gen_qevent_types.QMouseEvent): void =
  fcQCheckBox_virtualbase_mouseReleaseEvent(self.h, e.h)

proc QCheckBoxfocusInEvent*(self: gen_qcheckbox_types.QCheckBox, e: gen_qevent_types.QFocusEvent): void =
  fcQCheckBox_virtualbase_focusInEvent(self.h, e.h)

proc QCheckBoxfocusOutEvent*(self: gen_qcheckbox_types.QCheckBox, e: gen_qevent_types.QFocusEvent): void =
  fcQCheckBox_virtualbase_focusOutEvent(self.h, e.h)

proc QCheckBoxchangeEvent*(self: gen_qcheckbox_types.QCheckBox, e: gen_qcoreevent_types.QEvent): void =
  fcQCheckBox_virtualbase_changeEvent(self.h, e.h)

proc QCheckBoxtimerEvent*(self: gen_qcheckbox_types.QCheckBox, e: gen_qcoreevent_types.QTimerEvent): void =
  fcQCheckBox_virtualbase_timerEvent(self.h, e.h)

proc QCheckBoxdevType*(self: gen_qcheckbox_types.QCheckBox): cint =
  fcQCheckBox_virtualbase_devType(self.h)

proc QCheckBoxsetVisible*(self: gen_qcheckbox_types.QCheckBox, visible: bool): void =
  fcQCheckBox_virtualbase_setVisible(self.h, visible)

proc QCheckBoxheightForWidth*(self: gen_qcheckbox_types.QCheckBox, param1: cint): cint =
  fcQCheckBox_virtualbase_heightForWidth(self.h, param1)

proc QCheckBoxhasHeightForWidth*(self: gen_qcheckbox_types.QCheckBox): bool =
  fcQCheckBox_virtualbase_hasHeightForWidth(self.h)

proc QCheckBoxpaintEngine*(self: gen_qcheckbox_types.QCheckBox): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQCheckBox_virtualbase_paintEngine(self.h), owned: false)

proc QCheckBoxmouseDoubleClickEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QMouseEvent): void =
  fcQCheckBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc QCheckBoxwheelEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QWheelEvent): void =
  fcQCheckBox_virtualbase_wheelEvent(self.h, event.h)

proc QCheckBoxenterEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QEnterEvent): void =
  fcQCheckBox_virtualbase_enterEvent(self.h, event.h)

proc QCheckBoxleaveEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qcoreevent_types.QEvent): void =
  fcQCheckBox_virtualbase_leaveEvent(self.h, event.h)

proc QCheckBoxmoveEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QMoveEvent): void =
  fcQCheckBox_virtualbase_moveEvent(self.h, event.h)

proc QCheckBoxresizeEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QResizeEvent): void =
  fcQCheckBox_virtualbase_resizeEvent(self.h, event.h)

proc QCheckBoxcloseEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QCloseEvent): void =
  fcQCheckBox_virtualbase_closeEvent(self.h, event.h)

proc QCheckBoxcontextMenuEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QContextMenuEvent): void =
  fcQCheckBox_virtualbase_contextMenuEvent(self.h, event.h)

proc QCheckBoxtabletEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QTabletEvent): void =
  fcQCheckBox_virtualbase_tabletEvent(self.h, event.h)

proc QCheckBoxactionEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QActionEvent): void =
  fcQCheckBox_virtualbase_actionEvent(self.h, event.h)

proc QCheckBoxdragEnterEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QDragEnterEvent): void =
  fcQCheckBox_virtualbase_dragEnterEvent(self.h, event.h)

proc QCheckBoxdragMoveEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QDragMoveEvent): void =
  fcQCheckBox_virtualbase_dragMoveEvent(self.h, event.h)

proc QCheckBoxdragLeaveEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQCheckBox_virtualbase_dragLeaveEvent(self.h, event.h)

proc QCheckBoxdropEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QDropEvent): void =
  fcQCheckBox_virtualbase_dropEvent(self.h, event.h)

proc QCheckBoxshowEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QShowEvent): void =
  fcQCheckBox_virtualbase_showEvent(self.h, event.h)

proc QCheckBoxhideEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QHideEvent): void =
  fcQCheckBox_virtualbase_hideEvent(self.h, event.h)

proc QCheckBoxnativeEvent*(self: gen_qcheckbox_types.QCheckBox, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQCheckBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc QCheckBoxmetric*(self: gen_qcheckbox_types.QCheckBox, param1: cint): cint =
  fcQCheckBox_virtualbase_metric(self.h, cint(param1))

proc QCheckBoxinitPainter*(self: gen_qcheckbox_types.QCheckBox, painter: gen_qpainter_types.QPainter): void =
  fcQCheckBox_virtualbase_initPainter(self.h, painter.h)

proc QCheckBoxredirected*(self: gen_qcheckbox_types.QCheckBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQCheckBox_virtualbase_redirected(self.h, offset.h), owned: false)

proc QCheckBoxsharedPainter*(self: gen_qcheckbox_types.QCheckBox): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQCheckBox_virtualbase_sharedPainter(self.h), owned: false)

proc QCheckBoxinputMethodEvent*(self: gen_qcheckbox_types.QCheckBox, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQCheckBox_virtualbase_inputMethodEvent(self.h, param1.h)

proc QCheckBoxinputMethodQuery*(self: gen_qcheckbox_types.QCheckBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQCheckBox_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc QCheckBoxfocusNextPrevChild*(self: gen_qcheckbox_types.QCheckBox, next: bool): bool =
  fcQCheckBox_virtualbase_focusNextPrevChild(self.h, next)

proc QCheckBoxeventFilter*(self: gen_qcheckbox_types.QCheckBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQCheckBox_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QCheckBoxchildEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qcoreevent_types.QChildEvent): void =
  fcQCheckBox_virtualbase_childEvent(self.h, event.h)

proc QCheckBoxcustomEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qcoreevent_types.QEvent): void =
  fcQCheckBox_virtualbase_customEvent(self.h, event.h)

proc QCheckBoxconnectNotify*(self: gen_qcheckbox_types.QCheckBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQCheckBox_virtualbase_connectNotify(self.h, signal.h)

proc QCheckBoxdisconnectNotify*(self: gen_qcheckbox_types.QCheckBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQCheckBox_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQCheckBox_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCheckBox_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQCheckBox_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQCheckBox_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCheckBox_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCheckBox_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQCheckBox_vtable_callback_hitButton(self: pointer, pos: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: pos, owned: false)
  var virtualReturn = vtbl[].hitButton(self, slotval1)
  virtualReturn

proc fcQCheckBox_vtable_callback_checkStateSet(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  vtbl[].checkStateSet(self)

proc fcQCheckBox_vtable_callback_nextCheckState(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  vtbl[].nextCheckState(self)

proc fcQCheckBox_vtable_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc fcQCheckBox_vtable_callback_mouseMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQCheckBox_vtable_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionButton(h: option, owned: false)
  vtbl[].initStyleOption(self, slotval1)

proc fcQCheckBox_vtable_callback_keyPressEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQCheckBox_vtable_callback_keyReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQCheckBox_vtable_callback_mousePressEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQCheckBox_vtable_callback_mouseReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQCheckBox_vtable_callback_focusInEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQCheckBox_vtable_callback_focusOutEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQCheckBox_vtable_callback_changeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc fcQCheckBox_vtable_callback_timerEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQCheckBox_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQCheckBox_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc fcQCheckBox_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQCheckBox_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQCheckBox_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCheckBox_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQCheckBox_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQCheckBox_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc fcQCheckBox_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc fcQCheckBox_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc fcQCheckBox_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc fcQCheckBox_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc fcQCheckBox_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc fcQCheckBox_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc fcQCheckBox_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc fcQCheckBox_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQCheckBox_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQCheckBox_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQCheckBox_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc fcQCheckBox_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc fcQCheckBox_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc fcQCheckBox_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQCheckBox_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQCheckBox_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc fcQCheckBox_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCheckBox_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCheckBox_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQCheckBox_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCheckBox_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc fcQCheckBox_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQCheckBox_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQCheckBox_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQCheckBox_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQCheckBox_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](fcQCheckBox_vdata(self))
  let self = QCheckBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQCheckBox* {.inheritable.} = ref object of QCheckBox
  vtbl*: cQCheckBoxVTable

method metaObject*(self: VirtualQCheckBox): gen_qobjectdefs_types.QMetaObject {.base.} =
  QCheckBoxmetaObject(self[])
method metacast*(self: VirtualQCheckBox, param1: cstring): pointer {.base.} =
  QCheckBoxmetacast(self[], param1)
method metacall*(self: VirtualQCheckBox, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QCheckBoxmetacall(self[], param1, param2, param3)
method sizeHint*(self: VirtualQCheckBox): gen_qsize_types.QSize {.base.} =
  QCheckBoxsizeHint(self[])
method minimumSizeHint*(self: VirtualQCheckBox): gen_qsize_types.QSize {.base.} =
  QCheckBoxminimumSizeHint(self[])
method event*(self: VirtualQCheckBox, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QCheckBoxevent(self[], e)
method hitButton*(self: VirtualQCheckBox, pos: gen_qpoint_types.QPoint): bool {.base.} =
  QCheckBoxhitButton(self[], pos)
method checkStateSet*(self: VirtualQCheckBox): void {.base.} =
  QCheckBoxcheckStateSet(self[])
method nextCheckState*(self: VirtualQCheckBox): void {.base.} =
  QCheckBoxnextCheckState(self[])
method paintEvent*(self: VirtualQCheckBox, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QCheckBoxpaintEvent(self[], param1)
method mouseMoveEvent*(self: VirtualQCheckBox, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QCheckBoxmouseMoveEvent(self[], param1)
method initStyleOption*(self: VirtualQCheckBox, option: gen_qstyleoption_types.QStyleOptionButton): void {.base.} =
  QCheckBoxinitStyleOption(self[], option)
method keyPressEvent*(self: VirtualQCheckBox, e: gen_qevent_types.QKeyEvent): void {.base.} =
  QCheckBoxkeyPressEvent(self[], e)
method keyReleaseEvent*(self: VirtualQCheckBox, e: gen_qevent_types.QKeyEvent): void {.base.} =
  QCheckBoxkeyReleaseEvent(self[], e)
method mousePressEvent*(self: VirtualQCheckBox, e: gen_qevent_types.QMouseEvent): void {.base.} =
  QCheckBoxmousePressEvent(self[], e)
method mouseReleaseEvent*(self: VirtualQCheckBox, e: gen_qevent_types.QMouseEvent): void {.base.} =
  QCheckBoxmouseReleaseEvent(self[], e)
method focusInEvent*(self: VirtualQCheckBox, e: gen_qevent_types.QFocusEvent): void {.base.} =
  QCheckBoxfocusInEvent(self[], e)
method focusOutEvent*(self: VirtualQCheckBox, e: gen_qevent_types.QFocusEvent): void {.base.} =
  QCheckBoxfocusOutEvent(self[], e)
method changeEvent*(self: VirtualQCheckBox, e: gen_qcoreevent_types.QEvent): void {.base.} =
  QCheckBoxchangeEvent(self[], e)
method timerEvent*(self: VirtualQCheckBox, e: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QCheckBoxtimerEvent(self[], e)
method devType*(self: VirtualQCheckBox): cint {.base.} =
  QCheckBoxdevType(self[])
method setVisible*(self: VirtualQCheckBox, visible: bool): void {.base.} =
  QCheckBoxsetVisible(self[], visible)
method heightForWidth*(self: VirtualQCheckBox, param1: cint): cint {.base.} =
  QCheckBoxheightForWidth(self[], param1)
method hasHeightForWidth*(self: VirtualQCheckBox): bool {.base.} =
  QCheckBoxhasHeightForWidth(self[])
method paintEngine*(self: VirtualQCheckBox): gen_qpaintengine_types.QPaintEngine {.base.} =
  QCheckBoxpaintEngine(self[])
method mouseDoubleClickEvent*(self: VirtualQCheckBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QCheckBoxmouseDoubleClickEvent(self[], event)
method wheelEvent*(self: VirtualQCheckBox, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QCheckBoxwheelEvent(self[], event)
method enterEvent*(self: VirtualQCheckBox, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QCheckBoxenterEvent(self[], event)
method leaveEvent*(self: VirtualQCheckBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QCheckBoxleaveEvent(self[], event)
method moveEvent*(self: VirtualQCheckBox, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QCheckBoxmoveEvent(self[], event)
method resizeEvent*(self: VirtualQCheckBox, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QCheckBoxresizeEvent(self[], event)
method closeEvent*(self: VirtualQCheckBox, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QCheckBoxcloseEvent(self[], event)
method contextMenuEvent*(self: VirtualQCheckBox, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QCheckBoxcontextMenuEvent(self[], event)
method tabletEvent*(self: VirtualQCheckBox, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QCheckBoxtabletEvent(self[], event)
method actionEvent*(self: VirtualQCheckBox, event: gen_qevent_types.QActionEvent): void {.base.} =
  QCheckBoxactionEvent(self[], event)
method dragEnterEvent*(self: VirtualQCheckBox, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QCheckBoxdragEnterEvent(self[], event)
method dragMoveEvent*(self: VirtualQCheckBox, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QCheckBoxdragMoveEvent(self[], event)
method dragLeaveEvent*(self: VirtualQCheckBox, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QCheckBoxdragLeaveEvent(self[], event)
method dropEvent*(self: VirtualQCheckBox, event: gen_qevent_types.QDropEvent): void {.base.} =
  QCheckBoxdropEvent(self[], event)
method showEvent*(self: VirtualQCheckBox, event: gen_qevent_types.QShowEvent): void {.base.} =
  QCheckBoxshowEvent(self[], event)
method hideEvent*(self: VirtualQCheckBox, event: gen_qevent_types.QHideEvent): void {.base.} =
  QCheckBoxhideEvent(self[], event)
method nativeEvent*(self: VirtualQCheckBox, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QCheckBoxnativeEvent(self[], eventType, message, resultVal)
method metric*(self: VirtualQCheckBox, param1: cint): cint {.base.} =
  QCheckBoxmetric(self[], param1)
method initPainter*(self: VirtualQCheckBox, painter: gen_qpainter_types.QPainter): void {.base.} =
  QCheckBoxinitPainter(self[], painter)
method redirected*(self: VirtualQCheckBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QCheckBoxredirected(self[], offset)
method sharedPainter*(self: VirtualQCheckBox): gen_qpainter_types.QPainter {.base.} =
  QCheckBoxsharedPainter(self[])
method inputMethodEvent*(self: VirtualQCheckBox, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QCheckBoxinputMethodEvent(self[], param1)
method inputMethodQuery*(self: VirtualQCheckBox, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QCheckBoxinputMethodQuery(self[], param1)
method focusNextPrevChild*(self: VirtualQCheckBox, next: bool): bool {.base.} =
  QCheckBoxfocusNextPrevChild(self[], next)
method eventFilter*(self: VirtualQCheckBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QCheckBoxeventFilter(self[], watched, event)
method childEvent*(self: VirtualQCheckBox, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QCheckBoxchildEvent(self[], event)
method customEvent*(self: VirtualQCheckBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QCheckBoxcustomEvent(self[], event)
method connectNotify*(self: VirtualQCheckBox, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QCheckBoxconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQCheckBox, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QCheckBoxdisconnectNotify(self[], signal)

proc fcQCheckBox_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCheckBox_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQCheckBox_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQCheckBox_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCheckBox_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCheckBox_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQCheckBox_method_callback_hitButton(self: pointer, pos: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: pos, owned: false)
  var virtualReturn = inst.hitButton(slotval1)
  virtualReturn

proc fcQCheckBox_method_callback_checkStateSet(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  inst.checkStateSet()

proc fcQCheckBox_method_callback_nextCheckState(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  inst.nextCheckState()

proc fcQCheckBox_method_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  inst.paintEvent(slotval1)

proc fcQCheckBox_method_callback_mouseMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQCheckBox_method_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qstyleoption_types.QStyleOptionButton(h: option, owned: false)
  inst.initStyleOption(slotval1)

proc fcQCheckBox_method_callback_keyPressEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQCheckBox_method_callback_keyReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQCheckBox_method_callback_mousePressEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQCheckBox_method_callback_mouseReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQCheckBox_method_callback_focusInEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  inst.focusInEvent(slotval1)

proc fcQCheckBox_method_callback_focusOutEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQCheckBox_method_callback_changeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  inst.changeEvent(slotval1)

proc fcQCheckBox_method_callback_timerEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e, owned: false)
  inst.timerEvent(slotval1)

proc fcQCheckBox_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQCheckBox_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

proc fcQCheckBox_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQCheckBox_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQCheckBox_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCheckBox_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQCheckBox_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

proc fcQCheckBox_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

proc fcQCheckBox_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

proc fcQCheckBox_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

proc fcQCheckBox_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

proc fcQCheckBox_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

proc fcQCheckBox_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

proc fcQCheckBox_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

proc fcQCheckBox_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

proc fcQCheckBox_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

proc fcQCheckBox_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

proc fcQCheckBox_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

proc fcQCheckBox_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

proc fcQCheckBox_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

proc fcQCheckBox_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

proc fcQCheckBox_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQCheckBox_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQCheckBox_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

proc fcQCheckBox_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCheckBox_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCheckBox_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

proc fcQCheckBox_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCheckBox_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

proc fcQCheckBox_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQCheckBox_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQCheckBox_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQCheckBox_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQCheckBox_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCheckBox](fcQCheckBox_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc updateMicroFocus*(self: gen_qcheckbox_types.QCheckBox): void =
  fcQCheckBox_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qcheckbox_types.QCheckBox): void =
  fcQCheckBox_protectedbase_create(self.h)

proc destroy*(self: gen_qcheckbox_types.QCheckBox): void =
  fcQCheckBox_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qcheckbox_types.QCheckBox): bool =
  fcQCheckBox_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qcheckbox_types.QCheckBox): bool =
  fcQCheckBox_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qcheckbox_types.QCheckBox): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQCheckBox_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qcheckbox_types.QCheckBox): cint =
  fcQCheckBox_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qcheckbox_types.QCheckBox, signal: cstring): cint =
  fcQCheckBox_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qcheckbox_types.QCheckBox, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQCheckBox_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qcheckbox_types.QCheckBox,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QCheckBoxVTable = nil): gen_qcheckbox_types.QCheckBox =
  let vtbl = if vtbl == nil: new QCheckBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QCheckBoxVTable](fcQCheckBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQCheckBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQCheckBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQCheckBox_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQCheckBox_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQCheckBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQCheckBox_vtable_callback_event
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = fcQCheckBox_vtable_callback_hitButton
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = fcQCheckBox_vtable_callback_checkStateSet
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = fcQCheckBox_vtable_callback_nextCheckState
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQCheckBox_vtable_callback_paintEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQCheckBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = fcQCheckBox_vtable_callback_initStyleOption
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQCheckBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQCheckBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQCheckBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQCheckBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQCheckBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQCheckBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQCheckBox_vtable_callback_changeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQCheckBox_vtable_callback_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQCheckBox_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQCheckBox_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQCheckBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQCheckBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQCheckBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQCheckBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQCheckBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQCheckBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQCheckBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQCheckBox_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQCheckBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQCheckBox_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQCheckBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQCheckBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQCheckBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQCheckBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQCheckBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQCheckBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQCheckBox_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQCheckBox_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQCheckBox_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQCheckBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQCheckBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQCheckBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQCheckBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQCheckBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQCheckBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQCheckBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQCheckBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQCheckBox_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQCheckBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQCheckBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQCheckBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQCheckBox_vtable_callback_disconnectNotify
  gen_qcheckbox_types.QCheckBox(h: fcQCheckBox_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qcheckbox_types.QCheckBox,
    vtbl: ref QCheckBoxVTable = nil): gen_qcheckbox_types.QCheckBox =
  let vtbl = if vtbl == nil: new QCheckBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QCheckBoxVTable](fcQCheckBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQCheckBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQCheckBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQCheckBox_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQCheckBox_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQCheckBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQCheckBox_vtable_callback_event
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = fcQCheckBox_vtable_callback_hitButton
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = fcQCheckBox_vtable_callback_checkStateSet
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = fcQCheckBox_vtable_callback_nextCheckState
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQCheckBox_vtable_callback_paintEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQCheckBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = fcQCheckBox_vtable_callback_initStyleOption
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQCheckBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQCheckBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQCheckBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQCheckBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQCheckBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQCheckBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQCheckBox_vtable_callback_changeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQCheckBox_vtable_callback_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQCheckBox_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQCheckBox_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQCheckBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQCheckBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQCheckBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQCheckBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQCheckBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQCheckBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQCheckBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQCheckBox_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQCheckBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQCheckBox_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQCheckBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQCheckBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQCheckBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQCheckBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQCheckBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQCheckBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQCheckBox_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQCheckBox_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQCheckBox_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQCheckBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQCheckBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQCheckBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQCheckBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQCheckBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQCheckBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQCheckBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQCheckBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQCheckBox_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQCheckBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQCheckBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQCheckBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQCheckBox_vtable_callback_disconnectNotify
  gen_qcheckbox_types.QCheckBox(h: fcQCheckBox_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qcheckbox_types.QCheckBox,
    text: openArray[char],
    vtbl: ref QCheckBoxVTable = nil): gen_qcheckbox_types.QCheckBox =
  let vtbl = if vtbl == nil: new QCheckBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QCheckBoxVTable](fcQCheckBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQCheckBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQCheckBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQCheckBox_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQCheckBox_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQCheckBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQCheckBox_vtable_callback_event
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = fcQCheckBox_vtable_callback_hitButton
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = fcQCheckBox_vtable_callback_checkStateSet
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = fcQCheckBox_vtable_callback_nextCheckState
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQCheckBox_vtable_callback_paintEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQCheckBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = fcQCheckBox_vtable_callback_initStyleOption
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQCheckBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQCheckBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQCheckBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQCheckBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQCheckBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQCheckBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQCheckBox_vtable_callback_changeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQCheckBox_vtable_callback_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQCheckBox_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQCheckBox_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQCheckBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQCheckBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQCheckBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQCheckBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQCheckBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQCheckBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQCheckBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQCheckBox_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQCheckBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQCheckBox_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQCheckBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQCheckBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQCheckBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQCheckBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQCheckBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQCheckBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQCheckBox_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQCheckBox_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQCheckBox_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQCheckBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQCheckBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQCheckBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQCheckBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQCheckBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQCheckBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQCheckBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQCheckBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQCheckBox_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQCheckBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQCheckBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQCheckBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQCheckBox_vtable_callback_disconnectNotify
  gen_qcheckbox_types.QCheckBox(h: fcQCheckBox_new3(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: true)

proc create*(T: type gen_qcheckbox_types.QCheckBox,
    text: openArray[char], parent: gen_qwidget_types.QWidget,
    vtbl: ref QCheckBoxVTable = nil): gen_qcheckbox_types.QCheckBox =
  let vtbl = if vtbl == nil: new QCheckBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QCheckBoxVTable](fcQCheckBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQCheckBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQCheckBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQCheckBox_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQCheckBox_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQCheckBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQCheckBox_vtable_callback_event
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = fcQCheckBox_vtable_callback_hitButton
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = fcQCheckBox_vtable_callback_checkStateSet
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = fcQCheckBox_vtable_callback_nextCheckState
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQCheckBox_vtable_callback_paintEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQCheckBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = fcQCheckBox_vtable_callback_initStyleOption
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQCheckBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQCheckBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQCheckBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQCheckBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQCheckBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQCheckBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQCheckBox_vtable_callback_changeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQCheckBox_vtable_callback_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQCheckBox_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQCheckBox_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQCheckBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQCheckBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQCheckBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQCheckBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQCheckBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQCheckBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQCheckBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQCheckBox_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQCheckBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQCheckBox_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQCheckBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQCheckBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQCheckBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQCheckBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQCheckBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQCheckBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQCheckBox_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQCheckBox_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQCheckBox_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQCheckBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQCheckBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQCheckBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQCheckBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQCheckBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQCheckBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQCheckBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQCheckBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQCheckBox_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQCheckBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQCheckBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQCheckBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQCheckBox_vtable_callback_disconnectNotify
  gen_qcheckbox_types.QCheckBox(h: fcQCheckBox_new4(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), parent.h), owned: true)

const cQCheckBox_mvtbl = cQCheckBoxVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQCheckBox()[])](self.fcQCheckBox_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQCheckBox_method_callback_metaObject,
  metacast: fcQCheckBox_method_callback_metacast,
  metacall: fcQCheckBox_method_callback_metacall,
  sizeHint: fcQCheckBox_method_callback_sizeHint,
  minimumSizeHint: fcQCheckBox_method_callback_minimumSizeHint,
  event: fcQCheckBox_method_callback_event,
  hitButton: fcQCheckBox_method_callback_hitButton,
  checkStateSet: fcQCheckBox_method_callback_checkStateSet,
  nextCheckState: fcQCheckBox_method_callback_nextCheckState,
  paintEvent: fcQCheckBox_method_callback_paintEvent,
  mouseMoveEvent: fcQCheckBox_method_callback_mouseMoveEvent,
  initStyleOption: fcQCheckBox_method_callback_initStyleOption,
  keyPressEvent: fcQCheckBox_method_callback_keyPressEvent,
  keyReleaseEvent: fcQCheckBox_method_callback_keyReleaseEvent,
  mousePressEvent: fcQCheckBox_method_callback_mousePressEvent,
  mouseReleaseEvent: fcQCheckBox_method_callback_mouseReleaseEvent,
  focusInEvent: fcQCheckBox_method_callback_focusInEvent,
  focusOutEvent: fcQCheckBox_method_callback_focusOutEvent,
  changeEvent: fcQCheckBox_method_callback_changeEvent,
  timerEvent: fcQCheckBox_method_callback_timerEvent,
  devType: fcQCheckBox_method_callback_devType,
  setVisible: fcQCheckBox_method_callback_setVisible,
  heightForWidth: fcQCheckBox_method_callback_heightForWidth,
  hasHeightForWidth: fcQCheckBox_method_callback_hasHeightForWidth,
  paintEngine: fcQCheckBox_method_callback_paintEngine,
  mouseDoubleClickEvent: fcQCheckBox_method_callback_mouseDoubleClickEvent,
  wheelEvent: fcQCheckBox_method_callback_wheelEvent,
  enterEvent: fcQCheckBox_method_callback_enterEvent,
  leaveEvent: fcQCheckBox_method_callback_leaveEvent,
  moveEvent: fcQCheckBox_method_callback_moveEvent,
  resizeEvent: fcQCheckBox_method_callback_resizeEvent,
  closeEvent: fcQCheckBox_method_callback_closeEvent,
  contextMenuEvent: fcQCheckBox_method_callback_contextMenuEvent,
  tabletEvent: fcQCheckBox_method_callback_tabletEvent,
  actionEvent: fcQCheckBox_method_callback_actionEvent,
  dragEnterEvent: fcQCheckBox_method_callback_dragEnterEvent,
  dragMoveEvent: fcQCheckBox_method_callback_dragMoveEvent,
  dragLeaveEvent: fcQCheckBox_method_callback_dragLeaveEvent,
  dropEvent: fcQCheckBox_method_callback_dropEvent,
  showEvent: fcQCheckBox_method_callback_showEvent,
  hideEvent: fcQCheckBox_method_callback_hideEvent,
  nativeEvent: fcQCheckBox_method_callback_nativeEvent,
  metric: fcQCheckBox_method_callback_metric,
  initPainter: fcQCheckBox_method_callback_initPainter,
  redirected: fcQCheckBox_method_callback_redirected,
  sharedPainter: fcQCheckBox_method_callback_sharedPainter,
  inputMethodEvent: fcQCheckBox_method_callback_inputMethodEvent,
  inputMethodQuery: fcQCheckBox_method_callback_inputMethodQuery,
  focusNextPrevChild: fcQCheckBox_method_callback_focusNextPrevChild,
  eventFilter: fcQCheckBox_method_callback_eventFilter,
  childEvent: fcQCheckBox_method_callback_childEvent,
  customEvent: fcQCheckBox_method_callback_customEvent,
  connectNotify: fcQCheckBox_method_callback_connectNotify,
  disconnectNotify: fcQCheckBox_method_callback_disconnectNotify,
)
proc create*(T: type gen_qcheckbox_types.QCheckBox,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQCheckBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQCheckBox_new(addr(cQCheckBox_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qcheckbox_types.QCheckBox,
    inst: VirtualQCheckBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQCheckBox_new2(addr(cQCheckBox_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qcheckbox_types.QCheckBox,
    text: openArray[char],
    inst: VirtualQCheckBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQCheckBox_new3(addr(cQCheckBox_mvtbl), addr(inst[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))
  inst[].owned = true

proc create*(T: type gen_qcheckbox_types.QCheckBox,
    text: openArray[char], parent: gen_qwidget_types.QWidget,
    inst: VirtualQCheckBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQCheckBox_new4(addr(cQCheckBox_mvtbl), addr(inst[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qcheckbox_types.QCheckBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCheckBox_staticMetaObject())
