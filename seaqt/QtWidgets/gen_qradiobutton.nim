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

const cflags = gorge("pkg-config --cflags Qt6Widgets")  & " -fPIC"
{.compile("gen_qradiobutton.cpp", cflags).}


import ./gen_qradiobutton_types
export gen_qradiobutton_types

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

type cQRadioButton*{.exportc: "QRadioButton", incompleteStruct.} = object

proc fcQRadioButton_metaObject(self: pointer, ): pointer {.importc: "QRadioButton_metaObject".}
proc fcQRadioButton_metacast(self: pointer, param1: cstring): pointer {.importc: "QRadioButton_metacast".}
proc fcQRadioButton_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRadioButton_metacall".}
proc fcQRadioButton_tr(s: cstring): struct_miqt_string {.importc: "QRadioButton_tr".}
proc fcQRadioButton_sizeHint(self: pointer, ): pointer {.importc: "QRadioButton_sizeHint".}
proc fcQRadioButton_minimumSizeHint(self: pointer, ): pointer {.importc: "QRadioButton_minimumSizeHint".}
proc fcQRadioButton_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QRadioButton_tr2".}
proc fcQRadioButton_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRadioButton_tr3".}
type cQRadioButtonVTable = object
  destructor*: proc(vtbl: ptr cQRadioButtonVTable, self: ptr cQRadioButton) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  hitButton*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(vtbl, self: pointer, button: pointer): void {.cdecl, raises: [], gcsafe.}
  checkStateSet*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  nextCheckState*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
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
proc fcQRadioButton_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QRadioButton_virtualbase_metaObject".}
proc fcQRadioButton_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QRadioButton_virtualbase_metacast".}
proc fcQRadioButton_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRadioButton_virtualbase_metacall".}
proc fcQRadioButton_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QRadioButton_virtualbase_sizeHint".}
proc fcQRadioButton_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QRadioButton_virtualbase_minimumSizeHint".}
proc fcQRadioButton_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QRadioButton_virtualbase_event".}
proc fcQRadioButton_virtualbase_hitButton(self: pointer, param1: pointer): bool {.importc: "QRadioButton_virtualbase_hitButton".}
proc fcQRadioButton_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QRadioButton_virtualbase_paintEvent".}
proc fcQRadioButton_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void {.importc: "QRadioButton_virtualbase_mouseMoveEvent".}
proc fcQRadioButton_virtualbase_initStyleOption(self: pointer, button: pointer): void {.importc: "QRadioButton_virtualbase_initStyleOption".}
proc fcQRadioButton_virtualbase_checkStateSet(self: pointer, ): void {.importc: "QRadioButton_virtualbase_checkStateSet".}
proc fcQRadioButton_virtualbase_nextCheckState(self: pointer, ): void {.importc: "QRadioButton_virtualbase_nextCheckState".}
proc fcQRadioButton_virtualbase_keyPressEvent(self: pointer, e: pointer): void {.importc: "QRadioButton_virtualbase_keyPressEvent".}
proc fcQRadioButton_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void {.importc: "QRadioButton_virtualbase_keyReleaseEvent".}
proc fcQRadioButton_virtualbase_mousePressEvent(self: pointer, e: pointer): void {.importc: "QRadioButton_virtualbase_mousePressEvent".}
proc fcQRadioButton_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void {.importc: "QRadioButton_virtualbase_mouseReleaseEvent".}
proc fcQRadioButton_virtualbase_focusInEvent(self: pointer, e: pointer): void {.importc: "QRadioButton_virtualbase_focusInEvent".}
proc fcQRadioButton_virtualbase_focusOutEvent(self: pointer, e: pointer): void {.importc: "QRadioButton_virtualbase_focusOutEvent".}
proc fcQRadioButton_virtualbase_changeEvent(self: pointer, e: pointer): void {.importc: "QRadioButton_virtualbase_changeEvent".}
proc fcQRadioButton_virtualbase_timerEvent(self: pointer, e: pointer): void {.importc: "QRadioButton_virtualbase_timerEvent".}
proc fcQRadioButton_virtualbase_devType(self: pointer, ): cint {.importc: "QRadioButton_virtualbase_devType".}
proc fcQRadioButton_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QRadioButton_virtualbase_setVisible".}
proc fcQRadioButton_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QRadioButton_virtualbase_heightForWidth".}
proc fcQRadioButton_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QRadioButton_virtualbase_hasHeightForWidth".}
proc fcQRadioButton_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QRadioButton_virtualbase_paintEngine".}
proc fcQRadioButton_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QRadioButton_virtualbase_mouseDoubleClickEvent".}
proc fcQRadioButton_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QRadioButton_virtualbase_wheelEvent".}
proc fcQRadioButton_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QRadioButton_virtualbase_enterEvent".}
proc fcQRadioButton_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QRadioButton_virtualbase_leaveEvent".}
proc fcQRadioButton_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QRadioButton_virtualbase_moveEvent".}
proc fcQRadioButton_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QRadioButton_virtualbase_resizeEvent".}
proc fcQRadioButton_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QRadioButton_virtualbase_closeEvent".}
proc fcQRadioButton_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QRadioButton_virtualbase_contextMenuEvent".}
proc fcQRadioButton_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QRadioButton_virtualbase_tabletEvent".}
proc fcQRadioButton_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QRadioButton_virtualbase_actionEvent".}
proc fcQRadioButton_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QRadioButton_virtualbase_dragEnterEvent".}
proc fcQRadioButton_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QRadioButton_virtualbase_dragMoveEvent".}
proc fcQRadioButton_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QRadioButton_virtualbase_dragLeaveEvent".}
proc fcQRadioButton_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QRadioButton_virtualbase_dropEvent".}
proc fcQRadioButton_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QRadioButton_virtualbase_showEvent".}
proc fcQRadioButton_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QRadioButton_virtualbase_hideEvent".}
proc fcQRadioButton_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QRadioButton_virtualbase_nativeEvent".}
proc fcQRadioButton_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QRadioButton_virtualbase_metric".}
proc fcQRadioButton_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QRadioButton_virtualbase_initPainter".}
proc fcQRadioButton_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QRadioButton_virtualbase_redirected".}
proc fcQRadioButton_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QRadioButton_virtualbase_sharedPainter".}
proc fcQRadioButton_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QRadioButton_virtualbase_inputMethodEvent".}
proc fcQRadioButton_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QRadioButton_virtualbase_inputMethodQuery".}
proc fcQRadioButton_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QRadioButton_virtualbase_focusNextPrevChild".}
proc fcQRadioButton_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QRadioButton_virtualbase_eventFilter".}
proc fcQRadioButton_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QRadioButton_virtualbase_childEvent".}
proc fcQRadioButton_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QRadioButton_virtualbase_customEvent".}
proc fcQRadioButton_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QRadioButton_virtualbase_connectNotify".}
proc fcQRadioButton_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QRadioButton_virtualbase_disconnectNotify".}
proc fcQRadioButton_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QRadioButton_protectedbase_updateMicroFocus".}
proc fcQRadioButton_protectedbase_create(self: pointer, ): void {.importc: "QRadioButton_protectedbase_create".}
proc fcQRadioButton_protectedbase_destroy(self: pointer, ): void {.importc: "QRadioButton_protectedbase_destroy".}
proc fcQRadioButton_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QRadioButton_protectedbase_focusNextChild".}
proc fcQRadioButton_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QRadioButton_protectedbase_focusPreviousChild".}
proc fcQRadioButton_protectedbase_sender(self: pointer, ): pointer {.importc: "QRadioButton_protectedbase_sender".}
proc fcQRadioButton_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QRadioButton_protectedbase_senderSignalIndex".}
proc fcQRadioButton_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QRadioButton_protectedbase_receivers".}
proc fcQRadioButton_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QRadioButton_protectedbase_isSignalConnected".}
proc fcQRadioButton_new(vtbl: pointer, parent: pointer): ptr cQRadioButton {.importc: "QRadioButton_new".}
proc fcQRadioButton_new2(vtbl: pointer, ): ptr cQRadioButton {.importc: "QRadioButton_new2".}
proc fcQRadioButton_new3(vtbl: pointer, text: struct_miqt_string): ptr cQRadioButton {.importc: "QRadioButton_new3".}
proc fcQRadioButton_new4(vtbl: pointer, text: struct_miqt_string, parent: pointer): ptr cQRadioButton {.importc: "QRadioButton_new4".}
proc fcQRadioButton_staticMetaObject(): pointer {.importc: "QRadioButton_staticMetaObject".}
proc fcQRadioButton_delete(self: pointer) {.importc: "QRadioButton_delete".}

proc metaObject*(self: gen_qradiobutton_types.QRadioButton, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRadioButton_metaObject(self.h))

proc metacast*(self: gen_qradiobutton_types.QRadioButton, param1: cstring): pointer =
  fcQRadioButton_metacast(self.h, param1)

proc metacall*(self: gen_qradiobutton_types.QRadioButton, param1: cint, param2: cint, param3: pointer): cint =
  fcQRadioButton_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qradiobutton_types.QRadioButton, s: cstring): string =
  let v_ms = fcQRadioButton_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: gen_qradiobutton_types.QRadioButton, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQRadioButton_sizeHint(self.h))

proc minimumSizeHint*(self: gen_qradiobutton_types.QRadioButton, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQRadioButton_minimumSizeHint(self.h))

proc tr*(_: type gen_qradiobutton_types.QRadioButton, s: cstring, c: cstring): string =
  let v_ms = fcQRadioButton_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qradiobutton_types.QRadioButton, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRadioButton_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QRadioButtonmetaObjectProc* = proc(self: QRadioButton): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QRadioButtonmetacastProc* = proc(self: QRadioButton, param1: cstring): pointer {.raises: [], gcsafe.}
type QRadioButtonmetacallProc* = proc(self: QRadioButton, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QRadioButtonsizeHintProc* = proc(self: QRadioButton): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QRadioButtonminimumSizeHintProc* = proc(self: QRadioButton): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QRadioButtoneventProc* = proc(self: QRadioButton, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QRadioButtonhitButtonProc* = proc(self: QRadioButton, param1: gen_qpoint_types.QPoint): bool {.raises: [], gcsafe.}
type QRadioButtonpaintEventProc* = proc(self: QRadioButton, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QRadioButtonmouseMoveEventProc* = proc(self: QRadioButton, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QRadioButtoninitStyleOptionProc* = proc(self: QRadioButton, button: gen_qstyleoption_types.QStyleOptionButton): void {.raises: [], gcsafe.}
type QRadioButtoncheckStateSetProc* = proc(self: QRadioButton): void {.raises: [], gcsafe.}
type QRadioButtonnextCheckStateProc* = proc(self: QRadioButton): void {.raises: [], gcsafe.}
type QRadioButtonkeyPressEventProc* = proc(self: QRadioButton, e: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QRadioButtonkeyReleaseEventProc* = proc(self: QRadioButton, e: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QRadioButtonmousePressEventProc* = proc(self: QRadioButton, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QRadioButtonmouseReleaseEventProc* = proc(self: QRadioButton, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QRadioButtonfocusInEventProc* = proc(self: QRadioButton, e: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QRadioButtonfocusOutEventProc* = proc(self: QRadioButton, e: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QRadioButtonchangeEventProc* = proc(self: QRadioButton, e: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QRadioButtontimerEventProc* = proc(self: QRadioButton, e: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QRadioButtondevTypeProc* = proc(self: QRadioButton): cint {.raises: [], gcsafe.}
type QRadioButtonsetVisibleProc* = proc(self: QRadioButton, visible: bool): void {.raises: [], gcsafe.}
type QRadioButtonheightForWidthProc* = proc(self: QRadioButton, param1: cint): cint {.raises: [], gcsafe.}
type QRadioButtonhasHeightForWidthProc* = proc(self: QRadioButton): bool {.raises: [], gcsafe.}
type QRadioButtonpaintEngineProc* = proc(self: QRadioButton): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QRadioButtonmouseDoubleClickEventProc* = proc(self: QRadioButton, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QRadioButtonwheelEventProc* = proc(self: QRadioButton, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QRadioButtonenterEventProc* = proc(self: QRadioButton, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QRadioButtonleaveEventProc* = proc(self: QRadioButton, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QRadioButtonmoveEventProc* = proc(self: QRadioButton, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QRadioButtonresizeEventProc* = proc(self: QRadioButton, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QRadioButtoncloseEventProc* = proc(self: QRadioButton, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QRadioButtoncontextMenuEventProc* = proc(self: QRadioButton, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QRadioButtontabletEventProc* = proc(self: QRadioButton, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QRadioButtonactionEventProc* = proc(self: QRadioButton, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QRadioButtondragEnterEventProc* = proc(self: QRadioButton, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QRadioButtondragMoveEventProc* = proc(self: QRadioButton, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QRadioButtondragLeaveEventProc* = proc(self: QRadioButton, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QRadioButtondropEventProc* = proc(self: QRadioButton, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QRadioButtonshowEventProc* = proc(self: QRadioButton, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QRadioButtonhideEventProc* = proc(self: QRadioButton, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QRadioButtonnativeEventProc* = proc(self: QRadioButton, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QRadioButtonmetricProc* = proc(self: QRadioButton, param1: cint): cint {.raises: [], gcsafe.}
type QRadioButtoninitPainterProc* = proc(self: QRadioButton, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QRadioButtonredirectedProc* = proc(self: QRadioButton, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QRadioButtonsharedPainterProc* = proc(self: QRadioButton): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QRadioButtoninputMethodEventProc* = proc(self: QRadioButton, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QRadioButtoninputMethodQueryProc* = proc(self: QRadioButton, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QRadioButtonfocusNextPrevChildProc* = proc(self: QRadioButton, next: bool): bool {.raises: [], gcsafe.}
type QRadioButtoneventFilterProc* = proc(self: QRadioButton, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QRadioButtonchildEventProc* = proc(self: QRadioButton, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QRadioButtoncustomEventProc* = proc(self: QRadioButton, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QRadioButtonconnectNotifyProc* = proc(self: QRadioButton, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QRadioButtondisconnectNotifyProc* = proc(self: QRadioButton, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QRadioButtonVTable* = object
  vtbl: cQRadioButtonVTable
  metaObject*: QRadioButtonmetaObjectProc
  metacast*: QRadioButtonmetacastProc
  metacall*: QRadioButtonmetacallProc
  sizeHint*: QRadioButtonsizeHintProc
  minimumSizeHint*: QRadioButtonminimumSizeHintProc
  event*: QRadioButtoneventProc
  hitButton*: QRadioButtonhitButtonProc
  paintEvent*: QRadioButtonpaintEventProc
  mouseMoveEvent*: QRadioButtonmouseMoveEventProc
  initStyleOption*: QRadioButtoninitStyleOptionProc
  checkStateSet*: QRadioButtoncheckStateSetProc
  nextCheckState*: QRadioButtonnextCheckStateProc
  keyPressEvent*: QRadioButtonkeyPressEventProc
  keyReleaseEvent*: QRadioButtonkeyReleaseEventProc
  mousePressEvent*: QRadioButtonmousePressEventProc
  mouseReleaseEvent*: QRadioButtonmouseReleaseEventProc
  focusInEvent*: QRadioButtonfocusInEventProc
  focusOutEvent*: QRadioButtonfocusOutEventProc
  changeEvent*: QRadioButtonchangeEventProc
  timerEvent*: QRadioButtontimerEventProc
  devType*: QRadioButtondevTypeProc
  setVisible*: QRadioButtonsetVisibleProc
  heightForWidth*: QRadioButtonheightForWidthProc
  hasHeightForWidth*: QRadioButtonhasHeightForWidthProc
  paintEngine*: QRadioButtonpaintEngineProc
  mouseDoubleClickEvent*: QRadioButtonmouseDoubleClickEventProc
  wheelEvent*: QRadioButtonwheelEventProc
  enterEvent*: QRadioButtonenterEventProc
  leaveEvent*: QRadioButtonleaveEventProc
  moveEvent*: QRadioButtonmoveEventProc
  resizeEvent*: QRadioButtonresizeEventProc
  closeEvent*: QRadioButtoncloseEventProc
  contextMenuEvent*: QRadioButtoncontextMenuEventProc
  tabletEvent*: QRadioButtontabletEventProc
  actionEvent*: QRadioButtonactionEventProc
  dragEnterEvent*: QRadioButtondragEnterEventProc
  dragMoveEvent*: QRadioButtondragMoveEventProc
  dragLeaveEvent*: QRadioButtondragLeaveEventProc
  dropEvent*: QRadioButtondropEventProc
  showEvent*: QRadioButtonshowEventProc
  hideEvent*: QRadioButtonhideEventProc
  nativeEvent*: QRadioButtonnativeEventProc
  metric*: QRadioButtonmetricProc
  initPainter*: QRadioButtoninitPainterProc
  redirected*: QRadioButtonredirectedProc
  sharedPainter*: QRadioButtonsharedPainterProc
  inputMethodEvent*: QRadioButtoninputMethodEventProc
  inputMethodQuery*: QRadioButtoninputMethodQueryProc
  focusNextPrevChild*: QRadioButtonfocusNextPrevChildProc
  eventFilter*: QRadioButtoneventFilterProc
  childEvent*: QRadioButtonchildEventProc
  customEvent*: QRadioButtoncustomEventProc
  connectNotify*: QRadioButtonconnectNotifyProc
  disconnectNotify*: QRadioButtondisconnectNotifyProc
proc QRadioButtonmetaObject*(self: gen_qradiobutton_types.QRadioButton, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRadioButton_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQRadioButton_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QRadioButtonmetacast*(self: gen_qradiobutton_types.QRadioButton, param1: cstring): pointer =
  fcQRadioButton_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQRadioButton_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QRadioButtonmetacall*(self: gen_qradiobutton_types.QRadioButton, param1: cint, param2: cint, param3: pointer): cint =
  fcQRadioButton_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQRadioButton_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QRadioButtonsizeHint*(self: gen_qradiobutton_types.QRadioButton, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQRadioButton_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQRadioButton_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QRadioButtonminimumSizeHint*(self: gen_qradiobutton_types.QRadioButton, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQRadioButton_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQRadioButton_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QRadioButtonevent*(self: gen_qradiobutton_types.QRadioButton, e: gen_qcoreevent_types.QEvent): bool =
  fcQRadioButton_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQRadioButton_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QRadioButtonhitButton*(self: gen_qradiobutton_types.QRadioButton, param1: gen_qpoint_types.QPoint): bool =
  fcQRadioButton_virtualbase_hitButton(self.h, param1.h)

proc miqt_exec_callback_cQRadioButton_hitButton(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: param1)
  var virtualReturn = vtbl[].hitButton(self, slotval1)
  virtualReturn

proc QRadioButtonpaintEvent*(self: gen_qradiobutton_types.QRadioButton, param1: gen_qevent_types.QPaintEvent): void =
  fcQRadioButton_virtualbase_paintEvent(self.h, param1.h)

proc miqt_exec_callback_cQRadioButton_paintEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)
  vtbl[].paintEvent(self, slotval1)

proc QRadioButtonmouseMoveEvent*(self: gen_qradiobutton_types.QRadioButton, param1: gen_qevent_types.QMouseEvent): void =
  fcQRadioButton_virtualbase_mouseMoveEvent(self.h, param1.h)

proc miqt_exec_callback_cQRadioButton_mouseMoveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QRadioButtoninitStyleOption*(self: gen_qradiobutton_types.QRadioButton, button: gen_qstyleoption_types.QStyleOptionButton): void =
  fcQRadioButton_virtualbase_initStyleOption(self.h, button.h)

proc miqt_exec_callback_cQRadioButton_initStyleOption(vtbl: pointer, self: pointer, button: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionButton(h: button)
  vtbl[].initStyleOption(self, slotval1)

proc QRadioButtoncheckStateSet*(self: gen_qradiobutton_types.QRadioButton, ): void =
  fcQRadioButton_virtualbase_checkStateSet(self.h)

proc miqt_exec_callback_cQRadioButton_checkStateSet(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  vtbl[].checkStateSet(self)

proc QRadioButtonnextCheckState*(self: gen_qradiobutton_types.QRadioButton, ): void =
  fcQRadioButton_virtualbase_nextCheckState(self.h)

proc miqt_exec_callback_cQRadioButton_nextCheckState(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  vtbl[].nextCheckState(self)

proc QRadioButtonkeyPressEvent*(self: gen_qradiobutton_types.QRadioButton, e: gen_qevent_types.QKeyEvent): void =
  fcQRadioButton_virtualbase_keyPressEvent(self.h, e.h)

proc miqt_exec_callback_cQRadioButton_keyPressEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e)
  vtbl[].keyPressEvent(self, slotval1)

proc QRadioButtonkeyReleaseEvent*(self: gen_qradiobutton_types.QRadioButton, e: gen_qevent_types.QKeyEvent): void =
  fcQRadioButton_virtualbase_keyReleaseEvent(self.h, e.h)

proc miqt_exec_callback_cQRadioButton_keyReleaseEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QRadioButtonmousePressEvent*(self: gen_qradiobutton_types.QRadioButton, e: gen_qevent_types.QMouseEvent): void =
  fcQRadioButton_virtualbase_mousePressEvent(self.h, e.h)

proc miqt_exec_callback_cQRadioButton_mousePressEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)
  vtbl[].mousePressEvent(self, slotval1)

proc QRadioButtonmouseReleaseEvent*(self: gen_qradiobutton_types.QRadioButton, e: gen_qevent_types.QMouseEvent): void =
  fcQRadioButton_virtualbase_mouseReleaseEvent(self.h, e.h)

proc miqt_exec_callback_cQRadioButton_mouseReleaseEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QRadioButtonfocusInEvent*(self: gen_qradiobutton_types.QRadioButton, e: gen_qevent_types.QFocusEvent): void =
  fcQRadioButton_virtualbase_focusInEvent(self.h, e.h)

proc miqt_exec_callback_cQRadioButton_focusInEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)
  vtbl[].focusInEvent(self, slotval1)

proc QRadioButtonfocusOutEvent*(self: gen_qradiobutton_types.QRadioButton, e: gen_qevent_types.QFocusEvent): void =
  fcQRadioButton_virtualbase_focusOutEvent(self.h, e.h)

proc miqt_exec_callback_cQRadioButton_focusOutEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)
  vtbl[].focusOutEvent(self, slotval1)

proc QRadioButtonchangeEvent*(self: gen_qradiobutton_types.QRadioButton, e: gen_qcoreevent_types.QEvent): void =
  fcQRadioButton_virtualbase_changeEvent(self.h, e.h)

proc miqt_exec_callback_cQRadioButton_changeEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  vtbl[].changeEvent(self, slotval1)

proc QRadioButtontimerEvent*(self: gen_qradiobutton_types.QRadioButton, e: gen_qcoreevent_types.QTimerEvent): void =
  fcQRadioButton_virtualbase_timerEvent(self.h, e.h)

proc miqt_exec_callback_cQRadioButton_timerEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e)
  vtbl[].timerEvent(self, slotval1)

proc QRadioButtondevType*(self: gen_qradiobutton_types.QRadioButton, ): cint =
  fcQRadioButton_virtualbase_devType(self.h)

proc miqt_exec_callback_cQRadioButton_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QRadioButtonsetVisible*(self: gen_qradiobutton_types.QRadioButton, visible: bool): void =
  fcQRadioButton_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQRadioButton_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QRadioButtonheightForWidth*(self: gen_qradiobutton_types.QRadioButton, param1: cint): cint =
  fcQRadioButton_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQRadioButton_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QRadioButtonhasHeightForWidth*(self: gen_qradiobutton_types.QRadioButton, ): bool =
  fcQRadioButton_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQRadioButton_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QRadioButtonpaintEngine*(self: gen_qradiobutton_types.QRadioButton, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQRadioButton_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQRadioButton_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QRadioButtonmouseDoubleClickEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QMouseEvent): void =
  fcQRadioButton_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQRadioButton_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QRadioButtonwheelEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QWheelEvent): void =
  fcQRadioButton_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQRadioButton_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QRadioButtonenterEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QEnterEvent): void =
  fcQRadioButton_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQRadioButton_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QRadioButtonleaveEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qcoreevent_types.QEvent): void =
  fcQRadioButton_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQRadioButton_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QRadioButtonmoveEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QMoveEvent): void =
  fcQRadioButton_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQRadioButton_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QRadioButtonresizeEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QResizeEvent): void =
  fcQRadioButton_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQRadioButton_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QRadioButtoncloseEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QCloseEvent): void =
  fcQRadioButton_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQRadioButton_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QRadioButtoncontextMenuEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QContextMenuEvent): void =
  fcQRadioButton_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQRadioButton_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QRadioButtontabletEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QTabletEvent): void =
  fcQRadioButton_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQRadioButton_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QRadioButtonactionEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QActionEvent): void =
  fcQRadioButton_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQRadioButton_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QRadioButtondragEnterEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QDragEnterEvent): void =
  fcQRadioButton_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQRadioButton_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QRadioButtondragMoveEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QDragMoveEvent): void =
  fcQRadioButton_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQRadioButton_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QRadioButtondragLeaveEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQRadioButton_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQRadioButton_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QRadioButtondropEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QDropEvent): void =
  fcQRadioButton_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQRadioButton_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QRadioButtonshowEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QShowEvent): void =
  fcQRadioButton_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQRadioButton_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QRadioButtonhideEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QHideEvent): void =
  fcQRadioButton_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQRadioButton_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QRadioButtonnativeEvent*(self: gen_qradiobutton_types.QRadioButton, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQRadioButton_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQRadioButton_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QRadioButtonmetric*(self: gen_qradiobutton_types.QRadioButton, param1: cint): cint =
  fcQRadioButton_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQRadioButton_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QRadioButtoninitPainter*(self: gen_qradiobutton_types.QRadioButton, painter: gen_qpainter_types.QPainter): void =
  fcQRadioButton_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQRadioButton_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QRadioButtonredirected*(self: gen_qradiobutton_types.QRadioButton, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQRadioButton_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQRadioButton_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QRadioButtonsharedPainter*(self: gen_qradiobutton_types.QRadioButton, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQRadioButton_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQRadioButton_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QRadioButtoninputMethodEvent*(self: gen_qradiobutton_types.QRadioButton, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQRadioButton_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQRadioButton_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QRadioButtoninputMethodQuery*(self: gen_qradiobutton_types.QRadioButton, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQRadioButton_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQRadioButton_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QRadioButtonfocusNextPrevChild*(self: gen_qradiobutton_types.QRadioButton, next: bool): bool =
  fcQRadioButton_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQRadioButton_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QRadioButtoneventFilter*(self: gen_qradiobutton_types.QRadioButton, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQRadioButton_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQRadioButton_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QRadioButtonchildEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qcoreevent_types.QChildEvent): void =
  fcQRadioButton_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQRadioButton_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QRadioButtoncustomEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qcoreevent_types.QEvent): void =
  fcQRadioButton_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQRadioButton_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QRadioButtonconnectNotify*(self: gen_qradiobutton_types.QRadioButton, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRadioButton_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQRadioButton_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QRadioButtondisconnectNotify*(self: gen_qradiobutton_types.QRadioButton, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRadioButton_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQRadioButton_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](vtbl)
  let self = QRadioButton(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc updateMicroFocus*(self: gen_qradiobutton_types.QRadioButton, ): void =
  fcQRadioButton_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qradiobutton_types.QRadioButton, ): void =
  fcQRadioButton_protectedbase_create(self.h)

proc destroy*(self: gen_qradiobutton_types.QRadioButton, ): void =
  fcQRadioButton_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qradiobutton_types.QRadioButton, ): bool =
  fcQRadioButton_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qradiobutton_types.QRadioButton, ): bool =
  fcQRadioButton_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qradiobutton_types.QRadioButton, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQRadioButton_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qradiobutton_types.QRadioButton, ): cint =
  fcQRadioButton_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qradiobutton_types.QRadioButton, signal: cstring): cint =
  fcQRadioButton_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qradiobutton_types.QRadioButton, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQRadioButton_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qradiobutton_types.QRadioButton,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QRadioButtonVTable = nil): gen_qradiobutton_types.QRadioButton =
  let vtbl = if vtbl == nil: new QRadioButtonVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQRadioButtonVTable, _: ptr cQRadioButton) {.cdecl.} =
    let vtbl = cast[ref QRadioButtonVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQRadioButton_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQRadioButton_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQRadioButton_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQRadioButton_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQRadioButton_minimumSizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQRadioButton_event
  if not isNil(vtbl.hitButton):
    vtbl[].vtbl.hitButton = miqt_exec_callback_cQRadioButton_hitButton
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQRadioButton_paintEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQRadioButton_mouseMoveEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQRadioButton_initStyleOption
  if not isNil(vtbl.checkStateSet):
    vtbl[].vtbl.checkStateSet = miqt_exec_callback_cQRadioButton_checkStateSet
  if not isNil(vtbl.nextCheckState):
    vtbl[].vtbl.nextCheckState = miqt_exec_callback_cQRadioButton_nextCheckState
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQRadioButton_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQRadioButton_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQRadioButton_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQRadioButton_mouseReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQRadioButton_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQRadioButton_focusOutEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQRadioButton_changeEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQRadioButton_timerEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQRadioButton_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQRadioButton_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQRadioButton_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQRadioButton_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQRadioButton_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQRadioButton_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQRadioButton_wheelEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQRadioButton_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQRadioButton_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQRadioButton_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQRadioButton_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQRadioButton_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQRadioButton_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQRadioButton_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQRadioButton_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQRadioButton_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQRadioButton_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQRadioButton_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQRadioButton_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQRadioButton_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQRadioButton_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQRadioButton_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQRadioButton_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQRadioButton_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQRadioButton_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQRadioButton_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQRadioButton_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQRadioButton_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQRadioButton_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQRadioButton_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQRadioButton_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQRadioButton_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQRadioButton_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQRadioButton_disconnectNotify
  gen_qradiobutton_types.QRadioButton(h: fcQRadioButton_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qradiobutton_types.QRadioButton,
    vtbl: ref QRadioButtonVTable = nil): gen_qradiobutton_types.QRadioButton =
  let vtbl = if vtbl == nil: new QRadioButtonVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQRadioButtonVTable, _: ptr cQRadioButton) {.cdecl.} =
    let vtbl = cast[ref QRadioButtonVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQRadioButton_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQRadioButton_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQRadioButton_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQRadioButton_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQRadioButton_minimumSizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQRadioButton_event
  if not isNil(vtbl.hitButton):
    vtbl[].vtbl.hitButton = miqt_exec_callback_cQRadioButton_hitButton
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQRadioButton_paintEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQRadioButton_mouseMoveEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQRadioButton_initStyleOption
  if not isNil(vtbl.checkStateSet):
    vtbl[].vtbl.checkStateSet = miqt_exec_callback_cQRadioButton_checkStateSet
  if not isNil(vtbl.nextCheckState):
    vtbl[].vtbl.nextCheckState = miqt_exec_callback_cQRadioButton_nextCheckState
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQRadioButton_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQRadioButton_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQRadioButton_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQRadioButton_mouseReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQRadioButton_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQRadioButton_focusOutEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQRadioButton_changeEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQRadioButton_timerEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQRadioButton_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQRadioButton_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQRadioButton_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQRadioButton_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQRadioButton_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQRadioButton_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQRadioButton_wheelEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQRadioButton_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQRadioButton_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQRadioButton_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQRadioButton_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQRadioButton_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQRadioButton_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQRadioButton_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQRadioButton_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQRadioButton_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQRadioButton_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQRadioButton_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQRadioButton_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQRadioButton_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQRadioButton_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQRadioButton_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQRadioButton_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQRadioButton_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQRadioButton_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQRadioButton_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQRadioButton_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQRadioButton_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQRadioButton_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQRadioButton_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQRadioButton_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQRadioButton_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQRadioButton_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQRadioButton_disconnectNotify
  gen_qradiobutton_types.QRadioButton(h: fcQRadioButton_new2(addr(vtbl[]), ))

proc create*(T: type gen_qradiobutton_types.QRadioButton,
    text: string,
    vtbl: ref QRadioButtonVTable = nil): gen_qradiobutton_types.QRadioButton =
  let vtbl = if vtbl == nil: new QRadioButtonVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQRadioButtonVTable, _: ptr cQRadioButton) {.cdecl.} =
    let vtbl = cast[ref QRadioButtonVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQRadioButton_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQRadioButton_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQRadioButton_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQRadioButton_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQRadioButton_minimumSizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQRadioButton_event
  if not isNil(vtbl.hitButton):
    vtbl[].vtbl.hitButton = miqt_exec_callback_cQRadioButton_hitButton
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQRadioButton_paintEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQRadioButton_mouseMoveEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQRadioButton_initStyleOption
  if not isNil(vtbl.checkStateSet):
    vtbl[].vtbl.checkStateSet = miqt_exec_callback_cQRadioButton_checkStateSet
  if not isNil(vtbl.nextCheckState):
    vtbl[].vtbl.nextCheckState = miqt_exec_callback_cQRadioButton_nextCheckState
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQRadioButton_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQRadioButton_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQRadioButton_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQRadioButton_mouseReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQRadioButton_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQRadioButton_focusOutEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQRadioButton_changeEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQRadioButton_timerEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQRadioButton_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQRadioButton_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQRadioButton_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQRadioButton_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQRadioButton_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQRadioButton_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQRadioButton_wheelEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQRadioButton_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQRadioButton_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQRadioButton_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQRadioButton_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQRadioButton_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQRadioButton_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQRadioButton_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQRadioButton_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQRadioButton_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQRadioButton_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQRadioButton_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQRadioButton_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQRadioButton_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQRadioButton_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQRadioButton_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQRadioButton_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQRadioButton_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQRadioButton_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQRadioButton_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQRadioButton_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQRadioButton_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQRadioButton_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQRadioButton_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQRadioButton_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQRadioButton_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQRadioButton_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQRadioButton_disconnectNotify
  gen_qradiobutton_types.QRadioButton(h: fcQRadioButton_new3(addr(vtbl[]), struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qradiobutton_types.QRadioButton,
    text: string, parent: gen_qwidget_types.QWidget,
    vtbl: ref QRadioButtonVTable = nil): gen_qradiobutton_types.QRadioButton =
  let vtbl = if vtbl == nil: new QRadioButtonVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQRadioButtonVTable, _: ptr cQRadioButton) {.cdecl.} =
    let vtbl = cast[ref QRadioButtonVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQRadioButton_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQRadioButton_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQRadioButton_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQRadioButton_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQRadioButton_minimumSizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQRadioButton_event
  if not isNil(vtbl.hitButton):
    vtbl[].vtbl.hitButton = miqt_exec_callback_cQRadioButton_hitButton
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQRadioButton_paintEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQRadioButton_mouseMoveEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQRadioButton_initStyleOption
  if not isNil(vtbl.checkStateSet):
    vtbl[].vtbl.checkStateSet = miqt_exec_callback_cQRadioButton_checkStateSet
  if not isNil(vtbl.nextCheckState):
    vtbl[].vtbl.nextCheckState = miqt_exec_callback_cQRadioButton_nextCheckState
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQRadioButton_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQRadioButton_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQRadioButton_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQRadioButton_mouseReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQRadioButton_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQRadioButton_focusOutEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQRadioButton_changeEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQRadioButton_timerEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQRadioButton_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQRadioButton_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQRadioButton_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQRadioButton_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQRadioButton_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQRadioButton_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQRadioButton_wheelEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQRadioButton_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQRadioButton_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQRadioButton_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQRadioButton_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQRadioButton_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQRadioButton_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQRadioButton_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQRadioButton_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQRadioButton_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQRadioButton_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQRadioButton_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQRadioButton_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQRadioButton_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQRadioButton_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQRadioButton_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQRadioButton_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQRadioButton_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQRadioButton_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQRadioButton_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQRadioButton_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQRadioButton_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQRadioButton_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQRadioButton_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQRadioButton_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQRadioButton_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQRadioButton_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQRadioButton_disconnectNotify
  gen_qradiobutton_types.QRadioButton(h: fcQRadioButton_new4(addr(vtbl[]), struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))

proc staticMetaObject*(_: type gen_qradiobutton_types.QRadioButton): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRadioButton_staticMetaObject())
proc delete*(self: gen_qradiobutton_types.QRadioButton) =
  fcQRadioButton_delete(self.h)
