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
{.compile("gen_qcheckbox.cpp", cflags).}


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

proc fcQCheckBox_metaObject(self: pointer, ): pointer {.importc: "QCheckBox_metaObject".}
proc fcQCheckBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QCheckBox_metacast".}
proc fcQCheckBox_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCheckBox_metacall".}
proc fcQCheckBox_tr(s: cstring): struct_miqt_string {.importc: "QCheckBox_tr".}
proc fcQCheckBox_sizeHint(self: pointer, ): pointer {.importc: "QCheckBox_sizeHint".}
proc fcQCheckBox_minimumSizeHint(self: pointer, ): pointer {.importc: "QCheckBox_minimumSizeHint".}
proc fcQCheckBox_setTristate(self: pointer, ): void {.importc: "QCheckBox_setTristate".}
proc fcQCheckBox_isTristate(self: pointer, ): bool {.importc: "QCheckBox_isTristate".}
proc fcQCheckBox_checkState(self: pointer, ): cint {.importc: "QCheckBox_checkState".}
proc fcQCheckBox_setCheckState(self: pointer, state: cint): void {.importc: "QCheckBox_setCheckState".}
proc fcQCheckBox_stateChanged(self: pointer, param1: cint): void {.importc: "QCheckBox_stateChanged".}
proc fcQCheckBox_connect_stateChanged(self: pointer, slot: int) {.importc: "QCheckBox_connect_stateChanged".}
proc fcQCheckBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCheckBox_tr2".}
proc fcQCheckBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCheckBox_tr3".}
proc fcQCheckBox_setTristate1(self: pointer, y: bool): void {.importc: "QCheckBox_setTristate1".}
type cQCheckBoxVTable = object
  destructor*: proc(vtbl: ptr cQCheckBoxVTable, self: ptr cQCheckBox) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  hitButton*: proc(vtbl, self: pointer, pos: pointer): bool {.cdecl, raises: [], gcsafe.}
  checkStateSet*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  nextCheckState*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(vtbl, self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
proc fcQCheckBox_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QCheckBox_virtualbase_metaObject".}
proc fcQCheckBox_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QCheckBox_virtualbase_metacast".}
proc fcQCheckBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCheckBox_virtualbase_metacall".}
proc fcQCheckBox_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QCheckBox_virtualbase_sizeHint".}
proc fcQCheckBox_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QCheckBox_virtualbase_minimumSizeHint".}
proc fcQCheckBox_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QCheckBox_virtualbase_event".}
proc fcQCheckBox_virtualbase_hitButton(self: pointer, pos: pointer): bool {.importc: "QCheckBox_virtualbase_hitButton".}
proc fcQCheckBox_virtualbase_checkStateSet(self: pointer, ): void {.importc: "QCheckBox_virtualbase_checkStateSet".}
proc fcQCheckBox_virtualbase_nextCheckState(self: pointer, ): void {.importc: "QCheckBox_virtualbase_nextCheckState".}
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
proc fcQCheckBox_virtualbase_devType(self: pointer, ): cint {.importc: "QCheckBox_virtualbase_devType".}
proc fcQCheckBox_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QCheckBox_virtualbase_setVisible".}
proc fcQCheckBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QCheckBox_virtualbase_heightForWidth".}
proc fcQCheckBox_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QCheckBox_virtualbase_hasHeightForWidth".}
proc fcQCheckBox_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QCheckBox_virtualbase_paintEngine".}
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
proc fcQCheckBox_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QCheckBox_virtualbase_sharedPainter".}
proc fcQCheckBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QCheckBox_virtualbase_inputMethodEvent".}
proc fcQCheckBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QCheckBox_virtualbase_inputMethodQuery".}
proc fcQCheckBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QCheckBox_virtualbase_focusNextPrevChild".}
proc fcQCheckBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QCheckBox_virtualbase_eventFilter".}
proc fcQCheckBox_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QCheckBox_virtualbase_childEvent".}
proc fcQCheckBox_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QCheckBox_virtualbase_customEvent".}
proc fcQCheckBox_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QCheckBox_virtualbase_connectNotify".}
proc fcQCheckBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QCheckBox_virtualbase_disconnectNotify".}
proc fcQCheckBox_new(vtbl: pointer, parent: pointer): ptr cQCheckBox {.importc: "QCheckBox_new".}
proc fcQCheckBox_new2(vtbl: pointer, ): ptr cQCheckBox {.importc: "QCheckBox_new2".}
proc fcQCheckBox_new3(vtbl: pointer, text: struct_miqt_string): ptr cQCheckBox {.importc: "QCheckBox_new3".}
proc fcQCheckBox_new4(vtbl: pointer, text: struct_miqt_string, parent: pointer): ptr cQCheckBox {.importc: "QCheckBox_new4".}
proc fcQCheckBox_staticMetaObject(): pointer {.importc: "QCheckBox_staticMetaObject".}
proc fcQCheckBox_delete(self: pointer) {.importc: "QCheckBox_delete".}

proc metaObject*(self: gen_qcheckbox_types.QCheckBox, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCheckBox_metaObject(self.h))

proc metacast*(self: gen_qcheckbox_types.QCheckBox, param1: cstring): pointer =
  fcQCheckBox_metacast(self.h, param1)

proc metacall*(self: gen_qcheckbox_types.QCheckBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQCheckBox_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcheckbox_types.QCheckBox, s: cstring): string =
  let v_ms = fcQCheckBox_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: gen_qcheckbox_types.QCheckBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCheckBox_sizeHint(self.h))

proc minimumSizeHint*(self: gen_qcheckbox_types.QCheckBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCheckBox_minimumSizeHint(self.h))

proc setTristate*(self: gen_qcheckbox_types.QCheckBox, ): void =
  fcQCheckBox_setTristate(self.h)

proc isTristate*(self: gen_qcheckbox_types.QCheckBox, ): bool =
  fcQCheckBox_isTristate(self.h)

proc checkState*(self: gen_qcheckbox_types.QCheckBox, ): cint =
  cint(fcQCheckBox_checkState(self.h))

proc setCheckState*(self: gen_qcheckbox_types.QCheckBox, state: cint): void =
  fcQCheckBox_setCheckState(self.h, cint(state))

proc stateChanged*(self: gen_qcheckbox_types.QCheckBox, param1: cint): void =
  fcQCheckBox_stateChanged(self.h, param1)

type QCheckBoxstateChangedSlot* = proc(param1: cint)
proc miqt_exec_callback_cQCheckBox_stateChanged(slot: int, param1: cint) {.exportc: "miqt_exec_callback_QCheckBox_stateChanged".} =
  let nimfunc = cast[ptr QCheckBoxstateChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onstateChanged*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxstateChangedSlot) =
  var tmp = new QCheckBoxstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_connect_stateChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qcheckbox_types.QCheckBox, s: cstring, c: cstring): string =
  let v_ms = fcQCheckBox_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcheckbox_types.QCheckBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCheckBox_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QCheckBoxnativeEventProc* = proc(self: QCheckBox, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
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
type QCheckBoxVTable* = object
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
proc QCheckBoxmetaObject*(self: gen_qcheckbox_types.QCheckBox, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCheckBox_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQCheckBox_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QCheckBoxmetacast*(self: gen_qcheckbox_types.QCheckBox, param1: cstring): pointer =
  fcQCheckBox_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQCheckBox_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QCheckBoxmetacall*(self: gen_qcheckbox_types.QCheckBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQCheckBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQCheckBox_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QCheckBoxsizeHint*(self: gen_qcheckbox_types.QCheckBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCheckBox_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQCheckBox_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QCheckBoxminimumSizeHint*(self: gen_qcheckbox_types.QCheckBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCheckBox_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQCheckBox_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QCheckBoxevent*(self: gen_qcheckbox_types.QCheckBox, e: gen_qcoreevent_types.QEvent): bool =
  fcQCheckBox_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQCheckBox_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QCheckBoxhitButton*(self: gen_qcheckbox_types.QCheckBox, pos: gen_qpoint_types.QPoint): bool =
  fcQCheckBox_virtualbase_hitButton(self.h, pos.h)

proc miqt_exec_callback_cQCheckBox_hitButton(vtbl: pointer, self: pointer, pos: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: pos)
  var virtualReturn = vtbl[].hitButton(self, slotval1)
  virtualReturn

proc QCheckBoxcheckStateSet*(self: gen_qcheckbox_types.QCheckBox, ): void =
  fcQCheckBox_virtualbase_checkStateSet(self.h)

proc miqt_exec_callback_cQCheckBox_checkStateSet(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  vtbl[].checkStateSet(self)

proc QCheckBoxnextCheckState*(self: gen_qcheckbox_types.QCheckBox, ): void =
  fcQCheckBox_virtualbase_nextCheckState(self.h)

proc miqt_exec_callback_cQCheckBox_nextCheckState(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  vtbl[].nextCheckState(self)

proc QCheckBoxpaintEvent*(self: gen_qcheckbox_types.QCheckBox, param1: gen_qevent_types.QPaintEvent): void =
  fcQCheckBox_virtualbase_paintEvent(self.h, param1.h)

proc miqt_exec_callback_cQCheckBox_paintEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)
  vtbl[].paintEvent(self, slotval1)

proc QCheckBoxmouseMoveEvent*(self: gen_qcheckbox_types.QCheckBox, param1: gen_qevent_types.QMouseEvent): void =
  fcQCheckBox_virtualbase_mouseMoveEvent(self.h, param1.h)

proc miqt_exec_callback_cQCheckBox_mouseMoveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QCheckBoxinitStyleOption*(self: gen_qcheckbox_types.QCheckBox, option: gen_qstyleoption_types.QStyleOptionButton): void =
  fcQCheckBox_virtualbase_initStyleOption(self.h, option.h)

proc miqt_exec_callback_cQCheckBox_initStyleOption(vtbl: pointer, self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionButton(h: option)
  vtbl[].initStyleOption(self, slotval1)

proc QCheckBoxkeyPressEvent*(self: gen_qcheckbox_types.QCheckBox, e: gen_qevent_types.QKeyEvent): void =
  fcQCheckBox_virtualbase_keyPressEvent(self.h, e.h)

proc miqt_exec_callback_cQCheckBox_keyPressEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e)
  vtbl[].keyPressEvent(self, slotval1)

proc QCheckBoxkeyReleaseEvent*(self: gen_qcheckbox_types.QCheckBox, e: gen_qevent_types.QKeyEvent): void =
  fcQCheckBox_virtualbase_keyReleaseEvent(self.h, e.h)

proc miqt_exec_callback_cQCheckBox_keyReleaseEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QCheckBoxmousePressEvent*(self: gen_qcheckbox_types.QCheckBox, e: gen_qevent_types.QMouseEvent): void =
  fcQCheckBox_virtualbase_mousePressEvent(self.h, e.h)

proc miqt_exec_callback_cQCheckBox_mousePressEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)
  vtbl[].mousePressEvent(self, slotval1)

proc QCheckBoxmouseReleaseEvent*(self: gen_qcheckbox_types.QCheckBox, e: gen_qevent_types.QMouseEvent): void =
  fcQCheckBox_virtualbase_mouseReleaseEvent(self.h, e.h)

proc miqt_exec_callback_cQCheckBox_mouseReleaseEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QCheckBoxfocusInEvent*(self: gen_qcheckbox_types.QCheckBox, e: gen_qevent_types.QFocusEvent): void =
  fcQCheckBox_virtualbase_focusInEvent(self.h, e.h)

proc miqt_exec_callback_cQCheckBox_focusInEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)
  vtbl[].focusInEvent(self, slotval1)

proc QCheckBoxfocusOutEvent*(self: gen_qcheckbox_types.QCheckBox, e: gen_qevent_types.QFocusEvent): void =
  fcQCheckBox_virtualbase_focusOutEvent(self.h, e.h)

proc miqt_exec_callback_cQCheckBox_focusOutEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)
  vtbl[].focusOutEvent(self, slotval1)

proc QCheckBoxchangeEvent*(self: gen_qcheckbox_types.QCheckBox, e: gen_qcoreevent_types.QEvent): void =
  fcQCheckBox_virtualbase_changeEvent(self.h, e.h)

proc miqt_exec_callback_cQCheckBox_changeEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  vtbl[].changeEvent(self, slotval1)

proc QCheckBoxtimerEvent*(self: gen_qcheckbox_types.QCheckBox, e: gen_qcoreevent_types.QTimerEvent): void =
  fcQCheckBox_virtualbase_timerEvent(self.h, e.h)

proc miqt_exec_callback_cQCheckBox_timerEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e)
  vtbl[].timerEvent(self, slotval1)

proc QCheckBoxdevType*(self: gen_qcheckbox_types.QCheckBox, ): cint =
  fcQCheckBox_virtualbase_devType(self.h)

proc miqt_exec_callback_cQCheckBox_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QCheckBoxsetVisible*(self: gen_qcheckbox_types.QCheckBox, visible: bool): void =
  fcQCheckBox_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQCheckBox_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QCheckBoxheightForWidth*(self: gen_qcheckbox_types.QCheckBox, param1: cint): cint =
  fcQCheckBox_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQCheckBox_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QCheckBoxhasHeightForWidth*(self: gen_qcheckbox_types.QCheckBox, ): bool =
  fcQCheckBox_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQCheckBox_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QCheckBoxpaintEngine*(self: gen_qcheckbox_types.QCheckBox, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQCheckBox_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQCheckBox_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QCheckBoxmouseDoubleClickEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QMouseEvent): void =
  fcQCheckBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQCheckBox_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QCheckBoxwheelEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QWheelEvent): void =
  fcQCheckBox_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQCheckBox_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QCheckBoxenterEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QEnterEvent): void =
  fcQCheckBox_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQCheckBox_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QCheckBoxleaveEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qcoreevent_types.QEvent): void =
  fcQCheckBox_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQCheckBox_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QCheckBoxmoveEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QMoveEvent): void =
  fcQCheckBox_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQCheckBox_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QCheckBoxresizeEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QResizeEvent): void =
  fcQCheckBox_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQCheckBox_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QCheckBoxcloseEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QCloseEvent): void =
  fcQCheckBox_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQCheckBox_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QCheckBoxcontextMenuEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QContextMenuEvent): void =
  fcQCheckBox_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQCheckBox_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QCheckBoxtabletEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QTabletEvent): void =
  fcQCheckBox_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQCheckBox_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QCheckBoxactionEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QActionEvent): void =
  fcQCheckBox_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQCheckBox_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QCheckBoxdragEnterEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QDragEnterEvent): void =
  fcQCheckBox_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQCheckBox_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QCheckBoxdragMoveEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QDragMoveEvent): void =
  fcQCheckBox_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQCheckBox_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QCheckBoxdragLeaveEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQCheckBox_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQCheckBox_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QCheckBoxdropEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QDropEvent): void =
  fcQCheckBox_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQCheckBox_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QCheckBoxshowEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QShowEvent): void =
  fcQCheckBox_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQCheckBox_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QCheckBoxhideEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QHideEvent): void =
  fcQCheckBox_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQCheckBox_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QCheckBoxnativeEvent*(self: gen_qcheckbox_types.QCheckBox, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQCheckBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQCheckBox_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QCheckBoxmetric*(self: gen_qcheckbox_types.QCheckBox, param1: cint): cint =
  fcQCheckBox_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQCheckBox_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QCheckBoxinitPainter*(self: gen_qcheckbox_types.QCheckBox, painter: gen_qpainter_types.QPainter): void =
  fcQCheckBox_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQCheckBox_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QCheckBoxredirected*(self: gen_qcheckbox_types.QCheckBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQCheckBox_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQCheckBox_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QCheckBoxsharedPainter*(self: gen_qcheckbox_types.QCheckBox, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQCheckBox_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQCheckBox_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QCheckBoxinputMethodEvent*(self: gen_qcheckbox_types.QCheckBox, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQCheckBox_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQCheckBox_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QCheckBoxinputMethodQuery*(self: gen_qcheckbox_types.QCheckBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQCheckBox_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQCheckBox_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QCheckBoxfocusNextPrevChild*(self: gen_qcheckbox_types.QCheckBox, next: bool): bool =
  fcQCheckBox_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQCheckBox_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QCheckBoxeventFilter*(self: gen_qcheckbox_types.QCheckBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQCheckBox_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQCheckBox_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QCheckBoxchildEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qcoreevent_types.QChildEvent): void =
  fcQCheckBox_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQCheckBox_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QCheckBoxcustomEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qcoreevent_types.QEvent): void =
  fcQCheckBox_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQCheckBox_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QCheckBoxconnectNotify*(self: gen_qcheckbox_types.QCheckBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQCheckBox_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQCheckBox_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QCheckBoxdisconnectNotify*(self: gen_qcheckbox_types.QCheckBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQCheckBox_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQCheckBox_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCheckBoxVTable](vtbl)
  let self = QCheckBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qcheckbox_types.QCheckBox,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QCheckBoxVTable = nil): gen_qcheckbox_types.QCheckBox =
  let vtbl = if vtbl == nil: new QCheckBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQCheckBoxVTable, _: ptr cQCheckBox) {.cdecl.} =
    let vtbl = cast[ref QCheckBoxVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQCheckBox_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQCheckBox_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQCheckBox_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQCheckBox_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQCheckBox_minimumSizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQCheckBox_event
  if not isNil(vtbl.hitButton):
    vtbl[].vtbl.hitButton = miqt_exec_callback_cQCheckBox_hitButton
  if not isNil(vtbl.checkStateSet):
    vtbl[].vtbl.checkStateSet = miqt_exec_callback_cQCheckBox_checkStateSet
  if not isNil(vtbl.nextCheckState):
    vtbl[].vtbl.nextCheckState = miqt_exec_callback_cQCheckBox_nextCheckState
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQCheckBox_paintEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQCheckBox_mouseMoveEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQCheckBox_initStyleOption
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQCheckBox_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQCheckBox_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQCheckBox_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQCheckBox_mouseReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQCheckBox_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQCheckBox_focusOutEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQCheckBox_changeEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQCheckBox_timerEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQCheckBox_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQCheckBox_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQCheckBox_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQCheckBox_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQCheckBox_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQCheckBox_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQCheckBox_wheelEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQCheckBox_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQCheckBox_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQCheckBox_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQCheckBox_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQCheckBox_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQCheckBox_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQCheckBox_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQCheckBox_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQCheckBox_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQCheckBox_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQCheckBox_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQCheckBox_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQCheckBox_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQCheckBox_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQCheckBox_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQCheckBox_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQCheckBox_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQCheckBox_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQCheckBox_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQCheckBox_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQCheckBox_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQCheckBox_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQCheckBox_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQCheckBox_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQCheckBox_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQCheckBox_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQCheckBox_disconnectNotify
  gen_qcheckbox_types.QCheckBox(h: fcQCheckBox_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qcheckbox_types.QCheckBox,
    vtbl: ref QCheckBoxVTable = nil): gen_qcheckbox_types.QCheckBox =
  let vtbl = if vtbl == nil: new QCheckBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQCheckBoxVTable, _: ptr cQCheckBox) {.cdecl.} =
    let vtbl = cast[ref QCheckBoxVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQCheckBox_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQCheckBox_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQCheckBox_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQCheckBox_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQCheckBox_minimumSizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQCheckBox_event
  if not isNil(vtbl.hitButton):
    vtbl[].vtbl.hitButton = miqt_exec_callback_cQCheckBox_hitButton
  if not isNil(vtbl.checkStateSet):
    vtbl[].vtbl.checkStateSet = miqt_exec_callback_cQCheckBox_checkStateSet
  if not isNil(vtbl.nextCheckState):
    vtbl[].vtbl.nextCheckState = miqt_exec_callback_cQCheckBox_nextCheckState
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQCheckBox_paintEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQCheckBox_mouseMoveEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQCheckBox_initStyleOption
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQCheckBox_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQCheckBox_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQCheckBox_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQCheckBox_mouseReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQCheckBox_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQCheckBox_focusOutEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQCheckBox_changeEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQCheckBox_timerEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQCheckBox_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQCheckBox_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQCheckBox_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQCheckBox_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQCheckBox_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQCheckBox_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQCheckBox_wheelEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQCheckBox_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQCheckBox_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQCheckBox_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQCheckBox_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQCheckBox_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQCheckBox_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQCheckBox_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQCheckBox_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQCheckBox_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQCheckBox_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQCheckBox_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQCheckBox_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQCheckBox_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQCheckBox_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQCheckBox_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQCheckBox_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQCheckBox_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQCheckBox_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQCheckBox_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQCheckBox_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQCheckBox_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQCheckBox_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQCheckBox_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQCheckBox_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQCheckBox_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQCheckBox_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQCheckBox_disconnectNotify
  gen_qcheckbox_types.QCheckBox(h: fcQCheckBox_new2(addr(vtbl[]), ))

proc create*(T: type gen_qcheckbox_types.QCheckBox,
    text: string,
    vtbl: ref QCheckBoxVTable = nil): gen_qcheckbox_types.QCheckBox =
  let vtbl = if vtbl == nil: new QCheckBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQCheckBoxVTable, _: ptr cQCheckBox) {.cdecl.} =
    let vtbl = cast[ref QCheckBoxVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQCheckBox_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQCheckBox_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQCheckBox_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQCheckBox_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQCheckBox_minimumSizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQCheckBox_event
  if not isNil(vtbl.hitButton):
    vtbl[].vtbl.hitButton = miqt_exec_callback_cQCheckBox_hitButton
  if not isNil(vtbl.checkStateSet):
    vtbl[].vtbl.checkStateSet = miqt_exec_callback_cQCheckBox_checkStateSet
  if not isNil(vtbl.nextCheckState):
    vtbl[].vtbl.nextCheckState = miqt_exec_callback_cQCheckBox_nextCheckState
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQCheckBox_paintEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQCheckBox_mouseMoveEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQCheckBox_initStyleOption
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQCheckBox_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQCheckBox_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQCheckBox_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQCheckBox_mouseReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQCheckBox_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQCheckBox_focusOutEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQCheckBox_changeEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQCheckBox_timerEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQCheckBox_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQCheckBox_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQCheckBox_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQCheckBox_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQCheckBox_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQCheckBox_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQCheckBox_wheelEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQCheckBox_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQCheckBox_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQCheckBox_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQCheckBox_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQCheckBox_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQCheckBox_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQCheckBox_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQCheckBox_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQCheckBox_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQCheckBox_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQCheckBox_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQCheckBox_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQCheckBox_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQCheckBox_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQCheckBox_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQCheckBox_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQCheckBox_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQCheckBox_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQCheckBox_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQCheckBox_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQCheckBox_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQCheckBox_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQCheckBox_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQCheckBox_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQCheckBox_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQCheckBox_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQCheckBox_disconnectNotify
  gen_qcheckbox_types.QCheckBox(h: fcQCheckBox_new3(addr(vtbl[]), struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qcheckbox_types.QCheckBox,
    text: string, parent: gen_qwidget_types.QWidget,
    vtbl: ref QCheckBoxVTable = nil): gen_qcheckbox_types.QCheckBox =
  let vtbl = if vtbl == nil: new QCheckBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQCheckBoxVTable, _: ptr cQCheckBox) {.cdecl.} =
    let vtbl = cast[ref QCheckBoxVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQCheckBox_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQCheckBox_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQCheckBox_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQCheckBox_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQCheckBox_minimumSizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQCheckBox_event
  if not isNil(vtbl.hitButton):
    vtbl[].vtbl.hitButton = miqt_exec_callback_cQCheckBox_hitButton
  if not isNil(vtbl.checkStateSet):
    vtbl[].vtbl.checkStateSet = miqt_exec_callback_cQCheckBox_checkStateSet
  if not isNil(vtbl.nextCheckState):
    vtbl[].vtbl.nextCheckState = miqt_exec_callback_cQCheckBox_nextCheckState
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQCheckBox_paintEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQCheckBox_mouseMoveEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQCheckBox_initStyleOption
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQCheckBox_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQCheckBox_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQCheckBox_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQCheckBox_mouseReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQCheckBox_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQCheckBox_focusOutEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQCheckBox_changeEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQCheckBox_timerEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQCheckBox_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQCheckBox_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQCheckBox_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQCheckBox_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQCheckBox_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQCheckBox_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQCheckBox_wheelEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQCheckBox_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQCheckBox_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQCheckBox_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQCheckBox_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQCheckBox_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQCheckBox_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQCheckBox_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQCheckBox_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQCheckBox_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQCheckBox_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQCheckBox_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQCheckBox_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQCheckBox_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQCheckBox_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQCheckBox_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQCheckBox_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQCheckBox_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQCheckBox_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQCheckBox_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQCheckBox_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQCheckBox_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQCheckBox_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQCheckBox_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQCheckBox_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQCheckBox_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQCheckBox_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQCheckBox_disconnectNotify
  gen_qcheckbox_types.QCheckBox(h: fcQCheckBox_new4(addr(vtbl[]), struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))

proc staticMetaObject*(_: type gen_qcheckbox_types.QCheckBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCheckBox_staticMetaObject())
proc delete*(self: gen_qcheckbox_types.QCheckBox) =
  fcQCheckBox_delete(self.h)
