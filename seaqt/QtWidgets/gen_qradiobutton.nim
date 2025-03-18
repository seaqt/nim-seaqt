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


{.compile("gen_qradiobutton.cpp", QtWidgetsCFlags).}


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

proc fcQRadioButton_metaObject(self: pointer): pointer {.importc: "QRadioButton_metaObject".}
proc fcQRadioButton_metacast(self: pointer, param1: cstring): pointer {.importc: "QRadioButton_metacast".}
proc fcQRadioButton_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRadioButton_metacall".}
proc fcQRadioButton_tr(s: cstring): struct_miqt_string {.importc: "QRadioButton_tr".}
proc fcQRadioButton_sizeHint(self: pointer): pointer {.importc: "QRadioButton_sizeHint".}
proc fcQRadioButton_minimumSizeHint(self: pointer): pointer {.importc: "QRadioButton_minimumSizeHint".}
proc fcQRadioButton_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QRadioButton_tr2".}
proc fcQRadioButton_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRadioButton_tr3".}
proc fcQRadioButton_vtbl(self: pointer): pointer {.importc: "QRadioButton_vtbl".}
proc fcQRadioButton_vdata(self: pointer): pointer {.importc: "QRadioButton_vdata".}

type cQRadioButtonVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  hitButton*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(self: pointer, button: pointer): void {.cdecl, raises: [], gcsafe.}
  checkStateSet*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  nextCheckState*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
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
proc fcQRadioButton_virtualbase_metaObject(self: pointer): pointer {.importc: "QRadioButton_virtualbase_metaObject".}
proc fcQRadioButton_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QRadioButton_virtualbase_metacast".}
proc fcQRadioButton_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRadioButton_virtualbase_metacall".}
proc fcQRadioButton_virtualbase_sizeHint(self: pointer): pointer {.importc: "QRadioButton_virtualbase_sizeHint".}
proc fcQRadioButton_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QRadioButton_virtualbase_minimumSizeHint".}
proc fcQRadioButton_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QRadioButton_virtualbase_event".}
proc fcQRadioButton_virtualbase_hitButton(self: pointer, param1: pointer): bool {.importc: "QRadioButton_virtualbase_hitButton".}
proc fcQRadioButton_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QRadioButton_virtualbase_paintEvent".}
proc fcQRadioButton_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void {.importc: "QRadioButton_virtualbase_mouseMoveEvent".}
proc fcQRadioButton_virtualbase_initStyleOption(self: pointer, button: pointer): void {.importc: "QRadioButton_virtualbase_initStyleOption".}
proc fcQRadioButton_virtualbase_checkStateSet(self: pointer): void {.importc: "QRadioButton_virtualbase_checkStateSet".}
proc fcQRadioButton_virtualbase_nextCheckState(self: pointer): void {.importc: "QRadioButton_virtualbase_nextCheckState".}
proc fcQRadioButton_virtualbase_keyPressEvent(self: pointer, e: pointer): void {.importc: "QRadioButton_virtualbase_keyPressEvent".}
proc fcQRadioButton_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void {.importc: "QRadioButton_virtualbase_keyReleaseEvent".}
proc fcQRadioButton_virtualbase_mousePressEvent(self: pointer, e: pointer): void {.importc: "QRadioButton_virtualbase_mousePressEvent".}
proc fcQRadioButton_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void {.importc: "QRadioButton_virtualbase_mouseReleaseEvent".}
proc fcQRadioButton_virtualbase_focusInEvent(self: pointer, e: pointer): void {.importc: "QRadioButton_virtualbase_focusInEvent".}
proc fcQRadioButton_virtualbase_focusOutEvent(self: pointer, e: pointer): void {.importc: "QRadioButton_virtualbase_focusOutEvent".}
proc fcQRadioButton_virtualbase_changeEvent(self: pointer, e: pointer): void {.importc: "QRadioButton_virtualbase_changeEvent".}
proc fcQRadioButton_virtualbase_timerEvent(self: pointer, e: pointer): void {.importc: "QRadioButton_virtualbase_timerEvent".}
proc fcQRadioButton_virtualbase_devType(self: pointer): cint {.importc: "QRadioButton_virtualbase_devType".}
proc fcQRadioButton_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QRadioButton_virtualbase_setVisible".}
proc fcQRadioButton_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QRadioButton_virtualbase_heightForWidth".}
proc fcQRadioButton_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QRadioButton_virtualbase_hasHeightForWidth".}
proc fcQRadioButton_virtualbase_paintEngine(self: pointer): pointer {.importc: "QRadioButton_virtualbase_paintEngine".}
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
proc fcQRadioButton_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QRadioButton_virtualbase_sharedPainter".}
proc fcQRadioButton_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QRadioButton_virtualbase_inputMethodEvent".}
proc fcQRadioButton_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QRadioButton_virtualbase_inputMethodQuery".}
proc fcQRadioButton_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QRadioButton_virtualbase_focusNextPrevChild".}
proc fcQRadioButton_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QRadioButton_virtualbase_eventFilter".}
proc fcQRadioButton_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QRadioButton_virtualbase_childEvent".}
proc fcQRadioButton_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QRadioButton_virtualbase_customEvent".}
proc fcQRadioButton_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QRadioButton_virtualbase_connectNotify".}
proc fcQRadioButton_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QRadioButton_virtualbase_disconnectNotify".}
proc fcQRadioButton_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QRadioButton_protectedbase_updateMicroFocus".}
proc fcQRadioButton_protectedbase_create(self: pointer): void {.importc: "QRadioButton_protectedbase_create".}
proc fcQRadioButton_protectedbase_destroy(self: pointer): void {.importc: "QRadioButton_protectedbase_destroy".}
proc fcQRadioButton_protectedbase_focusNextChild(self: pointer): bool {.importc: "QRadioButton_protectedbase_focusNextChild".}
proc fcQRadioButton_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QRadioButton_protectedbase_focusPreviousChild".}
proc fcQRadioButton_protectedbase_sender(self: pointer): pointer {.importc: "QRadioButton_protectedbase_sender".}
proc fcQRadioButton_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QRadioButton_protectedbase_senderSignalIndex".}
proc fcQRadioButton_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QRadioButton_protectedbase_receivers".}
proc fcQRadioButton_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QRadioButton_protectedbase_isSignalConnected".}
proc fcQRadioButton_new(vtbl, vdata: pointer, parent: pointer): ptr cQRadioButton {.importc: "QRadioButton_new".}
proc fcQRadioButton_new2(vtbl, vdata: pointer): ptr cQRadioButton {.importc: "QRadioButton_new2".}
proc fcQRadioButton_new3(vtbl, vdata: pointer, text: struct_miqt_string): ptr cQRadioButton {.importc: "QRadioButton_new3".}
proc fcQRadioButton_new4(vtbl, vdata: pointer, text: struct_miqt_string, parent: pointer): ptr cQRadioButton {.importc: "QRadioButton_new4".}
proc fcQRadioButton_staticMetaObject(): pointer {.importc: "QRadioButton_staticMetaObject".}

proc metaObject*(self: gen_qradiobutton_types.QRadioButton): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRadioButton_metaObject(self.h), owned: false)

proc metacast*(self: gen_qradiobutton_types.QRadioButton, param1: cstring): pointer =
  fcQRadioButton_metacast(self.h, param1)

proc metacall*(self: gen_qradiobutton_types.QRadioButton, param1: cint, param2: cint, param3: pointer): cint =
  fcQRadioButton_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qradiobutton_types.QRadioButton, s: cstring): string =
  let v_ms = fcQRadioButton_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: gen_qradiobutton_types.QRadioButton): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQRadioButton_sizeHint(self.h), owned: true)

proc minimumSizeHint*(self: gen_qradiobutton_types.QRadioButton): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQRadioButton_minimumSizeHint(self.h), owned: true)

proc tr*(_: type gen_qradiobutton_types.QRadioButton, s: cstring, c: cstring): string =
  let v_ms = fcQRadioButton_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qradiobutton_types.QRadioButton, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRadioButton_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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
type QRadioButtonnativeEventProc* = proc(self: QRadioButton, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
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

type QRadioButtonVTable* {.inheritable, pure.} = object
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

proc QRadioButtonmetaObject*(self: gen_qradiobutton_types.QRadioButton): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRadioButton_virtualbase_metaObject(self.h), owned: false)

proc QRadioButtonmetacast*(self: gen_qradiobutton_types.QRadioButton, param1: cstring): pointer =
  fcQRadioButton_virtualbase_metacast(self.h, param1)

proc QRadioButtonmetacall*(self: gen_qradiobutton_types.QRadioButton, param1: cint, param2: cint, param3: pointer): cint =
  fcQRadioButton_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QRadioButtonsizeHint*(self: gen_qradiobutton_types.QRadioButton): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQRadioButton_virtualbase_sizeHint(self.h), owned: true)

proc QRadioButtonminimumSizeHint*(self: gen_qradiobutton_types.QRadioButton): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQRadioButton_virtualbase_minimumSizeHint(self.h), owned: true)

proc QRadioButtonevent*(self: gen_qradiobutton_types.QRadioButton, e: gen_qcoreevent_types.QEvent): bool =
  fcQRadioButton_virtualbase_event(self.h, e.h)

proc QRadioButtonhitButton*(self: gen_qradiobutton_types.QRadioButton, param1: gen_qpoint_types.QPoint): bool =
  fcQRadioButton_virtualbase_hitButton(self.h, param1.h)

proc QRadioButtonpaintEvent*(self: gen_qradiobutton_types.QRadioButton, param1: gen_qevent_types.QPaintEvent): void =
  fcQRadioButton_virtualbase_paintEvent(self.h, param1.h)

proc QRadioButtonmouseMoveEvent*(self: gen_qradiobutton_types.QRadioButton, param1: gen_qevent_types.QMouseEvent): void =
  fcQRadioButton_virtualbase_mouseMoveEvent(self.h, param1.h)

proc QRadioButtoninitStyleOption*(self: gen_qradiobutton_types.QRadioButton, button: gen_qstyleoption_types.QStyleOptionButton): void =
  fcQRadioButton_virtualbase_initStyleOption(self.h, button.h)

proc QRadioButtoncheckStateSet*(self: gen_qradiobutton_types.QRadioButton): void =
  fcQRadioButton_virtualbase_checkStateSet(self.h)

proc QRadioButtonnextCheckState*(self: gen_qradiobutton_types.QRadioButton): void =
  fcQRadioButton_virtualbase_nextCheckState(self.h)

proc QRadioButtonkeyPressEvent*(self: gen_qradiobutton_types.QRadioButton, e: gen_qevent_types.QKeyEvent): void =
  fcQRadioButton_virtualbase_keyPressEvent(self.h, e.h)

proc QRadioButtonkeyReleaseEvent*(self: gen_qradiobutton_types.QRadioButton, e: gen_qevent_types.QKeyEvent): void =
  fcQRadioButton_virtualbase_keyReleaseEvent(self.h, e.h)

proc QRadioButtonmousePressEvent*(self: gen_qradiobutton_types.QRadioButton, e: gen_qevent_types.QMouseEvent): void =
  fcQRadioButton_virtualbase_mousePressEvent(self.h, e.h)

proc QRadioButtonmouseReleaseEvent*(self: gen_qradiobutton_types.QRadioButton, e: gen_qevent_types.QMouseEvent): void =
  fcQRadioButton_virtualbase_mouseReleaseEvent(self.h, e.h)

proc QRadioButtonfocusInEvent*(self: gen_qradiobutton_types.QRadioButton, e: gen_qevent_types.QFocusEvent): void =
  fcQRadioButton_virtualbase_focusInEvent(self.h, e.h)

proc QRadioButtonfocusOutEvent*(self: gen_qradiobutton_types.QRadioButton, e: gen_qevent_types.QFocusEvent): void =
  fcQRadioButton_virtualbase_focusOutEvent(self.h, e.h)

proc QRadioButtonchangeEvent*(self: gen_qradiobutton_types.QRadioButton, e: gen_qcoreevent_types.QEvent): void =
  fcQRadioButton_virtualbase_changeEvent(self.h, e.h)

proc QRadioButtontimerEvent*(self: gen_qradiobutton_types.QRadioButton, e: gen_qcoreevent_types.QTimerEvent): void =
  fcQRadioButton_virtualbase_timerEvent(self.h, e.h)

proc QRadioButtondevType*(self: gen_qradiobutton_types.QRadioButton): cint =
  fcQRadioButton_virtualbase_devType(self.h)

proc QRadioButtonsetVisible*(self: gen_qradiobutton_types.QRadioButton, visible: bool): void =
  fcQRadioButton_virtualbase_setVisible(self.h, visible)

proc QRadioButtonheightForWidth*(self: gen_qradiobutton_types.QRadioButton, param1: cint): cint =
  fcQRadioButton_virtualbase_heightForWidth(self.h, param1)

proc QRadioButtonhasHeightForWidth*(self: gen_qradiobutton_types.QRadioButton): bool =
  fcQRadioButton_virtualbase_hasHeightForWidth(self.h)

proc QRadioButtonpaintEngine*(self: gen_qradiobutton_types.QRadioButton): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQRadioButton_virtualbase_paintEngine(self.h), owned: false)

proc QRadioButtonmouseDoubleClickEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QMouseEvent): void =
  fcQRadioButton_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc QRadioButtonwheelEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QWheelEvent): void =
  fcQRadioButton_virtualbase_wheelEvent(self.h, event.h)

proc QRadioButtonenterEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QEnterEvent): void =
  fcQRadioButton_virtualbase_enterEvent(self.h, event.h)

proc QRadioButtonleaveEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qcoreevent_types.QEvent): void =
  fcQRadioButton_virtualbase_leaveEvent(self.h, event.h)

proc QRadioButtonmoveEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QMoveEvent): void =
  fcQRadioButton_virtualbase_moveEvent(self.h, event.h)

proc QRadioButtonresizeEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QResizeEvent): void =
  fcQRadioButton_virtualbase_resizeEvent(self.h, event.h)

proc QRadioButtoncloseEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QCloseEvent): void =
  fcQRadioButton_virtualbase_closeEvent(self.h, event.h)

proc QRadioButtoncontextMenuEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QContextMenuEvent): void =
  fcQRadioButton_virtualbase_contextMenuEvent(self.h, event.h)

proc QRadioButtontabletEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QTabletEvent): void =
  fcQRadioButton_virtualbase_tabletEvent(self.h, event.h)

proc QRadioButtonactionEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QActionEvent): void =
  fcQRadioButton_virtualbase_actionEvent(self.h, event.h)

proc QRadioButtondragEnterEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QDragEnterEvent): void =
  fcQRadioButton_virtualbase_dragEnterEvent(self.h, event.h)

proc QRadioButtondragMoveEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QDragMoveEvent): void =
  fcQRadioButton_virtualbase_dragMoveEvent(self.h, event.h)

proc QRadioButtondragLeaveEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQRadioButton_virtualbase_dragLeaveEvent(self.h, event.h)

proc QRadioButtondropEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QDropEvent): void =
  fcQRadioButton_virtualbase_dropEvent(self.h, event.h)

proc QRadioButtonshowEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QShowEvent): void =
  fcQRadioButton_virtualbase_showEvent(self.h, event.h)

proc QRadioButtonhideEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QHideEvent): void =
  fcQRadioButton_virtualbase_hideEvent(self.h, event.h)

proc QRadioButtonnativeEvent*(self: gen_qradiobutton_types.QRadioButton, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQRadioButton_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc QRadioButtonmetric*(self: gen_qradiobutton_types.QRadioButton, param1: cint): cint =
  fcQRadioButton_virtualbase_metric(self.h, cint(param1))

proc QRadioButtoninitPainter*(self: gen_qradiobutton_types.QRadioButton, painter: gen_qpainter_types.QPainter): void =
  fcQRadioButton_virtualbase_initPainter(self.h, painter.h)

proc QRadioButtonredirected*(self: gen_qradiobutton_types.QRadioButton, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQRadioButton_virtualbase_redirected(self.h, offset.h), owned: false)

proc QRadioButtonsharedPainter*(self: gen_qradiobutton_types.QRadioButton): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQRadioButton_virtualbase_sharedPainter(self.h), owned: false)

proc QRadioButtoninputMethodEvent*(self: gen_qradiobutton_types.QRadioButton, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQRadioButton_virtualbase_inputMethodEvent(self.h, param1.h)

proc QRadioButtoninputMethodQuery*(self: gen_qradiobutton_types.QRadioButton, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQRadioButton_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc QRadioButtonfocusNextPrevChild*(self: gen_qradiobutton_types.QRadioButton, next: bool): bool =
  fcQRadioButton_virtualbase_focusNextPrevChild(self.h, next)

proc QRadioButtoneventFilter*(self: gen_qradiobutton_types.QRadioButton, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQRadioButton_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QRadioButtonchildEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qcoreevent_types.QChildEvent): void =
  fcQRadioButton_virtualbase_childEvent(self.h, event.h)

proc QRadioButtoncustomEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qcoreevent_types.QEvent): void =
  fcQRadioButton_virtualbase_customEvent(self.h, event.h)

proc QRadioButtonconnectNotify*(self: gen_qradiobutton_types.QRadioButton, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRadioButton_virtualbase_connectNotify(self.h, signal.h)

proc QRadioButtondisconnectNotify*(self: gen_qradiobutton_types.QRadioButton, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRadioButton_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQRadioButton_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRadioButton_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQRadioButton_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQRadioButton_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRadioButton_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRadioButton_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQRadioButton_vtable_callback_hitButton(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: param1, owned: false)
  var virtualReturn = vtbl[].hitButton(self, slotval1)
  virtualReturn

proc fcQRadioButton_vtable_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc fcQRadioButton_vtable_callback_mouseMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQRadioButton_vtable_callback_initStyleOption(self: pointer, button: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionButton(h: button, owned: false)
  vtbl[].initStyleOption(self, slotval1)

proc fcQRadioButton_vtable_callback_checkStateSet(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  vtbl[].checkStateSet(self)

proc fcQRadioButton_vtable_callback_nextCheckState(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  vtbl[].nextCheckState(self)

proc fcQRadioButton_vtable_callback_keyPressEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQRadioButton_vtable_callback_keyReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQRadioButton_vtable_callback_mousePressEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQRadioButton_vtable_callback_mouseReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQRadioButton_vtable_callback_focusInEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQRadioButton_vtable_callback_focusOutEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQRadioButton_vtable_callback_changeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc fcQRadioButton_vtable_callback_timerEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQRadioButton_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQRadioButton_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc fcQRadioButton_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQRadioButton_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQRadioButton_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRadioButton_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQRadioButton_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQRadioButton_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc fcQRadioButton_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc fcQRadioButton_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc fcQRadioButton_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc fcQRadioButton_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc fcQRadioButton_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc fcQRadioButton_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc fcQRadioButton_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc fcQRadioButton_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQRadioButton_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQRadioButton_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQRadioButton_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc fcQRadioButton_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc fcQRadioButton_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc fcQRadioButton_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQRadioButton_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQRadioButton_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc fcQRadioButton_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRadioButton_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRadioButton_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQRadioButton_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRadioButton_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc fcQRadioButton_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQRadioButton_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQRadioButton_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQRadioButton_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQRadioButton_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioButtonVTable](fcQRadioButton_vdata(self))
  let self = QRadioButton(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQRadioButton* {.inheritable.} = ref object of QRadioButton
  vtbl*: cQRadioButtonVTable

method metaObject*(self: VirtualQRadioButton): gen_qobjectdefs_types.QMetaObject {.base.} =
  QRadioButtonmetaObject(self[])
method metacast*(self: VirtualQRadioButton, param1: cstring): pointer {.base.} =
  QRadioButtonmetacast(self[], param1)
method metacall*(self: VirtualQRadioButton, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QRadioButtonmetacall(self[], param1, param2, param3)
method sizeHint*(self: VirtualQRadioButton): gen_qsize_types.QSize {.base.} =
  QRadioButtonsizeHint(self[])
method minimumSizeHint*(self: VirtualQRadioButton): gen_qsize_types.QSize {.base.} =
  QRadioButtonminimumSizeHint(self[])
method event*(self: VirtualQRadioButton, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRadioButtonevent(self[], e)
method hitButton*(self: VirtualQRadioButton, param1: gen_qpoint_types.QPoint): bool {.base.} =
  QRadioButtonhitButton(self[], param1)
method paintEvent*(self: VirtualQRadioButton, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QRadioButtonpaintEvent(self[], param1)
method mouseMoveEvent*(self: VirtualQRadioButton, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QRadioButtonmouseMoveEvent(self[], param1)
method initStyleOption*(self: VirtualQRadioButton, button: gen_qstyleoption_types.QStyleOptionButton): void {.base.} =
  QRadioButtoninitStyleOption(self[], button)
method checkStateSet*(self: VirtualQRadioButton): void {.base.} =
  QRadioButtoncheckStateSet(self[])
method nextCheckState*(self: VirtualQRadioButton): void {.base.} =
  QRadioButtonnextCheckState(self[])
method keyPressEvent*(self: VirtualQRadioButton, e: gen_qevent_types.QKeyEvent): void {.base.} =
  QRadioButtonkeyPressEvent(self[], e)
method keyReleaseEvent*(self: VirtualQRadioButton, e: gen_qevent_types.QKeyEvent): void {.base.} =
  QRadioButtonkeyReleaseEvent(self[], e)
method mousePressEvent*(self: VirtualQRadioButton, e: gen_qevent_types.QMouseEvent): void {.base.} =
  QRadioButtonmousePressEvent(self[], e)
method mouseReleaseEvent*(self: VirtualQRadioButton, e: gen_qevent_types.QMouseEvent): void {.base.} =
  QRadioButtonmouseReleaseEvent(self[], e)
method focusInEvent*(self: VirtualQRadioButton, e: gen_qevent_types.QFocusEvent): void {.base.} =
  QRadioButtonfocusInEvent(self[], e)
method focusOutEvent*(self: VirtualQRadioButton, e: gen_qevent_types.QFocusEvent): void {.base.} =
  QRadioButtonfocusOutEvent(self[], e)
method changeEvent*(self: VirtualQRadioButton, e: gen_qcoreevent_types.QEvent): void {.base.} =
  QRadioButtonchangeEvent(self[], e)
method timerEvent*(self: VirtualQRadioButton, e: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QRadioButtontimerEvent(self[], e)
method devType*(self: VirtualQRadioButton): cint {.base.} =
  QRadioButtondevType(self[])
method setVisible*(self: VirtualQRadioButton, visible: bool): void {.base.} =
  QRadioButtonsetVisible(self[], visible)
method heightForWidth*(self: VirtualQRadioButton, param1: cint): cint {.base.} =
  QRadioButtonheightForWidth(self[], param1)
method hasHeightForWidth*(self: VirtualQRadioButton): bool {.base.} =
  QRadioButtonhasHeightForWidth(self[])
method paintEngine*(self: VirtualQRadioButton): gen_qpaintengine_types.QPaintEngine {.base.} =
  QRadioButtonpaintEngine(self[])
method mouseDoubleClickEvent*(self: VirtualQRadioButton, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QRadioButtonmouseDoubleClickEvent(self[], event)
method wheelEvent*(self: VirtualQRadioButton, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QRadioButtonwheelEvent(self[], event)
method enterEvent*(self: VirtualQRadioButton, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QRadioButtonenterEvent(self[], event)
method leaveEvent*(self: VirtualQRadioButton, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QRadioButtonleaveEvent(self[], event)
method moveEvent*(self: VirtualQRadioButton, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QRadioButtonmoveEvent(self[], event)
method resizeEvent*(self: VirtualQRadioButton, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QRadioButtonresizeEvent(self[], event)
method closeEvent*(self: VirtualQRadioButton, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QRadioButtoncloseEvent(self[], event)
method contextMenuEvent*(self: VirtualQRadioButton, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QRadioButtoncontextMenuEvent(self[], event)
method tabletEvent*(self: VirtualQRadioButton, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QRadioButtontabletEvent(self[], event)
method actionEvent*(self: VirtualQRadioButton, event: gen_qevent_types.QActionEvent): void {.base.} =
  QRadioButtonactionEvent(self[], event)
method dragEnterEvent*(self: VirtualQRadioButton, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QRadioButtondragEnterEvent(self[], event)
method dragMoveEvent*(self: VirtualQRadioButton, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QRadioButtondragMoveEvent(self[], event)
method dragLeaveEvent*(self: VirtualQRadioButton, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QRadioButtondragLeaveEvent(self[], event)
method dropEvent*(self: VirtualQRadioButton, event: gen_qevent_types.QDropEvent): void {.base.} =
  QRadioButtondropEvent(self[], event)
method showEvent*(self: VirtualQRadioButton, event: gen_qevent_types.QShowEvent): void {.base.} =
  QRadioButtonshowEvent(self[], event)
method hideEvent*(self: VirtualQRadioButton, event: gen_qevent_types.QHideEvent): void {.base.} =
  QRadioButtonhideEvent(self[], event)
method nativeEvent*(self: VirtualQRadioButton, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QRadioButtonnativeEvent(self[], eventType, message, resultVal)
method metric*(self: VirtualQRadioButton, param1: cint): cint {.base.} =
  QRadioButtonmetric(self[], param1)
method initPainter*(self: VirtualQRadioButton, painter: gen_qpainter_types.QPainter): void {.base.} =
  QRadioButtoninitPainter(self[], painter)
method redirected*(self: VirtualQRadioButton, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QRadioButtonredirected(self[], offset)
method sharedPainter*(self: VirtualQRadioButton): gen_qpainter_types.QPainter {.base.} =
  QRadioButtonsharedPainter(self[])
method inputMethodEvent*(self: VirtualQRadioButton, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QRadioButtoninputMethodEvent(self[], param1)
method inputMethodQuery*(self: VirtualQRadioButton, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QRadioButtoninputMethodQuery(self[], param1)
method focusNextPrevChild*(self: VirtualQRadioButton, next: bool): bool {.base.} =
  QRadioButtonfocusNextPrevChild(self[], next)
method eventFilter*(self: VirtualQRadioButton, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRadioButtoneventFilter(self[], watched, event)
method childEvent*(self: VirtualQRadioButton, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QRadioButtonchildEvent(self[], event)
method customEvent*(self: VirtualQRadioButton, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QRadioButtoncustomEvent(self[], event)
method connectNotify*(self: VirtualQRadioButton, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRadioButtonconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQRadioButton, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRadioButtondisconnectNotify(self[], signal)

proc fcQRadioButton_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRadioButton_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQRadioButton_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQRadioButton_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRadioButton_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRadioButton_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQRadioButton_method_callback_hitButton(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: param1, owned: false)
  var virtualReturn = inst.hitButton(slotval1)
  virtualReturn

proc fcQRadioButton_method_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  inst.paintEvent(slotval1)

proc fcQRadioButton_method_callback_mouseMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQRadioButton_method_callback_initStyleOption(self: pointer, button: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qstyleoption_types.QStyleOptionButton(h: button, owned: false)
  inst.initStyleOption(slotval1)

proc fcQRadioButton_method_callback_checkStateSet(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  inst.checkStateSet()

proc fcQRadioButton_method_callback_nextCheckState(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  inst.nextCheckState()

proc fcQRadioButton_method_callback_keyPressEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQRadioButton_method_callback_keyReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQRadioButton_method_callback_mousePressEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQRadioButton_method_callback_mouseReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQRadioButton_method_callback_focusInEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  inst.focusInEvent(slotval1)

proc fcQRadioButton_method_callback_focusOutEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQRadioButton_method_callback_changeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  inst.changeEvent(slotval1)

proc fcQRadioButton_method_callback_timerEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e, owned: false)
  inst.timerEvent(slotval1)

proc fcQRadioButton_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQRadioButton_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

proc fcQRadioButton_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQRadioButton_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQRadioButton_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRadioButton_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQRadioButton_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

proc fcQRadioButton_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

proc fcQRadioButton_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

proc fcQRadioButton_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

proc fcQRadioButton_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

proc fcQRadioButton_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

proc fcQRadioButton_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

proc fcQRadioButton_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

proc fcQRadioButton_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

proc fcQRadioButton_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

proc fcQRadioButton_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

proc fcQRadioButton_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

proc fcQRadioButton_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

proc fcQRadioButton_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

proc fcQRadioButton_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

proc fcQRadioButton_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQRadioButton_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQRadioButton_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

proc fcQRadioButton_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRadioButton_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRadioButton_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

proc fcQRadioButton_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRadioButton_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

proc fcQRadioButton_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQRadioButton_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQRadioButton_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQRadioButton_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQRadioButton_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioButton](fcQRadioButton_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc updateMicroFocus*(self: gen_qradiobutton_types.QRadioButton): void =
  fcQRadioButton_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qradiobutton_types.QRadioButton): void =
  fcQRadioButton_protectedbase_create(self.h)

proc destroy*(self: gen_qradiobutton_types.QRadioButton): void =
  fcQRadioButton_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qradiobutton_types.QRadioButton): bool =
  fcQRadioButton_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qradiobutton_types.QRadioButton): bool =
  fcQRadioButton_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qradiobutton_types.QRadioButton): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQRadioButton_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qradiobutton_types.QRadioButton): cint =
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
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRadioButtonVTable](fcQRadioButton_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRadioButton_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRadioButton_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRadioButton_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQRadioButton_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQRadioButton_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRadioButton_vtable_callback_event
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = fcQRadioButton_vtable_callback_hitButton
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQRadioButton_vtable_callback_paintEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQRadioButton_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = fcQRadioButton_vtable_callback_initStyleOption
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = fcQRadioButton_vtable_callback_checkStateSet
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = fcQRadioButton_vtable_callback_nextCheckState
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQRadioButton_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQRadioButton_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQRadioButton_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQRadioButton_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQRadioButton_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQRadioButton_vtable_callback_focusOutEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQRadioButton_vtable_callback_changeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRadioButton_vtable_callback_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQRadioButton_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQRadioButton_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQRadioButton_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQRadioButton_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQRadioButton_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQRadioButton_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQRadioButton_vtable_callback_wheelEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQRadioButton_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQRadioButton_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQRadioButton_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQRadioButton_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQRadioButton_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQRadioButton_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQRadioButton_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQRadioButton_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQRadioButton_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQRadioButton_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQRadioButton_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQRadioButton_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQRadioButton_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQRadioButton_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQRadioButton_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQRadioButton_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQRadioButton_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQRadioButton_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQRadioButton_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQRadioButton_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQRadioButton_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQRadioButton_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRadioButton_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRadioButton_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRadioButton_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRadioButton_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRadioButton_vtable_callback_disconnectNotify
  gen_qradiobutton_types.QRadioButton(h: fcQRadioButton_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qradiobutton_types.QRadioButton,
    vtbl: ref QRadioButtonVTable = nil): gen_qradiobutton_types.QRadioButton =
  let vtbl = if vtbl == nil: new QRadioButtonVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRadioButtonVTable](fcQRadioButton_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRadioButton_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRadioButton_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRadioButton_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQRadioButton_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQRadioButton_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRadioButton_vtable_callback_event
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = fcQRadioButton_vtable_callback_hitButton
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQRadioButton_vtable_callback_paintEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQRadioButton_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = fcQRadioButton_vtable_callback_initStyleOption
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = fcQRadioButton_vtable_callback_checkStateSet
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = fcQRadioButton_vtable_callback_nextCheckState
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQRadioButton_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQRadioButton_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQRadioButton_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQRadioButton_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQRadioButton_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQRadioButton_vtable_callback_focusOutEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQRadioButton_vtable_callback_changeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRadioButton_vtable_callback_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQRadioButton_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQRadioButton_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQRadioButton_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQRadioButton_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQRadioButton_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQRadioButton_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQRadioButton_vtable_callback_wheelEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQRadioButton_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQRadioButton_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQRadioButton_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQRadioButton_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQRadioButton_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQRadioButton_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQRadioButton_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQRadioButton_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQRadioButton_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQRadioButton_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQRadioButton_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQRadioButton_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQRadioButton_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQRadioButton_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQRadioButton_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQRadioButton_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQRadioButton_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQRadioButton_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQRadioButton_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQRadioButton_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQRadioButton_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQRadioButton_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRadioButton_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRadioButton_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRadioButton_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRadioButton_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRadioButton_vtable_callback_disconnectNotify
  gen_qradiobutton_types.QRadioButton(h: fcQRadioButton_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qradiobutton_types.QRadioButton,
    text: openArray[char],
    vtbl: ref QRadioButtonVTable = nil): gen_qradiobutton_types.QRadioButton =
  let vtbl = if vtbl == nil: new QRadioButtonVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRadioButtonVTable](fcQRadioButton_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRadioButton_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRadioButton_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRadioButton_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQRadioButton_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQRadioButton_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRadioButton_vtable_callback_event
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = fcQRadioButton_vtable_callback_hitButton
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQRadioButton_vtable_callback_paintEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQRadioButton_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = fcQRadioButton_vtable_callback_initStyleOption
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = fcQRadioButton_vtable_callback_checkStateSet
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = fcQRadioButton_vtable_callback_nextCheckState
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQRadioButton_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQRadioButton_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQRadioButton_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQRadioButton_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQRadioButton_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQRadioButton_vtable_callback_focusOutEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQRadioButton_vtable_callback_changeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRadioButton_vtable_callback_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQRadioButton_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQRadioButton_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQRadioButton_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQRadioButton_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQRadioButton_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQRadioButton_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQRadioButton_vtable_callback_wheelEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQRadioButton_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQRadioButton_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQRadioButton_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQRadioButton_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQRadioButton_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQRadioButton_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQRadioButton_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQRadioButton_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQRadioButton_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQRadioButton_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQRadioButton_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQRadioButton_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQRadioButton_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQRadioButton_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQRadioButton_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQRadioButton_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQRadioButton_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQRadioButton_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQRadioButton_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQRadioButton_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQRadioButton_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQRadioButton_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRadioButton_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRadioButton_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRadioButton_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRadioButton_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRadioButton_vtable_callback_disconnectNotify
  gen_qradiobutton_types.QRadioButton(h: fcQRadioButton_new3(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: true)

proc create*(T: type gen_qradiobutton_types.QRadioButton,
    text: openArray[char], parent: gen_qwidget_types.QWidget,
    vtbl: ref QRadioButtonVTable = nil): gen_qradiobutton_types.QRadioButton =
  let vtbl = if vtbl == nil: new QRadioButtonVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRadioButtonVTable](fcQRadioButton_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRadioButton_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRadioButton_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRadioButton_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQRadioButton_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQRadioButton_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRadioButton_vtable_callback_event
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = fcQRadioButton_vtable_callback_hitButton
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQRadioButton_vtable_callback_paintEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQRadioButton_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = fcQRadioButton_vtable_callback_initStyleOption
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = fcQRadioButton_vtable_callback_checkStateSet
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = fcQRadioButton_vtable_callback_nextCheckState
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQRadioButton_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQRadioButton_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQRadioButton_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQRadioButton_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQRadioButton_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQRadioButton_vtable_callback_focusOutEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQRadioButton_vtable_callback_changeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRadioButton_vtable_callback_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQRadioButton_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQRadioButton_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQRadioButton_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQRadioButton_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQRadioButton_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQRadioButton_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQRadioButton_vtable_callback_wheelEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQRadioButton_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQRadioButton_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQRadioButton_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQRadioButton_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQRadioButton_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQRadioButton_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQRadioButton_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQRadioButton_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQRadioButton_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQRadioButton_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQRadioButton_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQRadioButton_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQRadioButton_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQRadioButton_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQRadioButton_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQRadioButton_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQRadioButton_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQRadioButton_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQRadioButton_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQRadioButton_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQRadioButton_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQRadioButton_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRadioButton_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRadioButton_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRadioButton_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRadioButton_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRadioButton_vtable_callback_disconnectNotify
  gen_qradiobutton_types.QRadioButton(h: fcQRadioButton_new4(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), parent.h), owned: true)

const cQRadioButton_mvtbl = cQRadioButtonVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQRadioButton()[])](self.fcQRadioButton_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQRadioButton_method_callback_metaObject,
  metacast: fcQRadioButton_method_callback_metacast,
  metacall: fcQRadioButton_method_callback_metacall,
  sizeHint: fcQRadioButton_method_callback_sizeHint,
  minimumSizeHint: fcQRadioButton_method_callback_minimumSizeHint,
  event: fcQRadioButton_method_callback_event,
  hitButton: fcQRadioButton_method_callback_hitButton,
  paintEvent: fcQRadioButton_method_callback_paintEvent,
  mouseMoveEvent: fcQRadioButton_method_callback_mouseMoveEvent,
  initStyleOption: fcQRadioButton_method_callback_initStyleOption,
  checkStateSet: fcQRadioButton_method_callback_checkStateSet,
  nextCheckState: fcQRadioButton_method_callback_nextCheckState,
  keyPressEvent: fcQRadioButton_method_callback_keyPressEvent,
  keyReleaseEvent: fcQRadioButton_method_callback_keyReleaseEvent,
  mousePressEvent: fcQRadioButton_method_callback_mousePressEvent,
  mouseReleaseEvent: fcQRadioButton_method_callback_mouseReleaseEvent,
  focusInEvent: fcQRadioButton_method_callback_focusInEvent,
  focusOutEvent: fcQRadioButton_method_callback_focusOutEvent,
  changeEvent: fcQRadioButton_method_callback_changeEvent,
  timerEvent: fcQRadioButton_method_callback_timerEvent,
  devType: fcQRadioButton_method_callback_devType,
  setVisible: fcQRadioButton_method_callback_setVisible,
  heightForWidth: fcQRadioButton_method_callback_heightForWidth,
  hasHeightForWidth: fcQRadioButton_method_callback_hasHeightForWidth,
  paintEngine: fcQRadioButton_method_callback_paintEngine,
  mouseDoubleClickEvent: fcQRadioButton_method_callback_mouseDoubleClickEvent,
  wheelEvent: fcQRadioButton_method_callback_wheelEvent,
  enterEvent: fcQRadioButton_method_callback_enterEvent,
  leaveEvent: fcQRadioButton_method_callback_leaveEvent,
  moveEvent: fcQRadioButton_method_callback_moveEvent,
  resizeEvent: fcQRadioButton_method_callback_resizeEvent,
  closeEvent: fcQRadioButton_method_callback_closeEvent,
  contextMenuEvent: fcQRadioButton_method_callback_contextMenuEvent,
  tabletEvent: fcQRadioButton_method_callback_tabletEvent,
  actionEvent: fcQRadioButton_method_callback_actionEvent,
  dragEnterEvent: fcQRadioButton_method_callback_dragEnterEvent,
  dragMoveEvent: fcQRadioButton_method_callback_dragMoveEvent,
  dragLeaveEvent: fcQRadioButton_method_callback_dragLeaveEvent,
  dropEvent: fcQRadioButton_method_callback_dropEvent,
  showEvent: fcQRadioButton_method_callback_showEvent,
  hideEvent: fcQRadioButton_method_callback_hideEvent,
  nativeEvent: fcQRadioButton_method_callback_nativeEvent,
  metric: fcQRadioButton_method_callback_metric,
  initPainter: fcQRadioButton_method_callback_initPainter,
  redirected: fcQRadioButton_method_callback_redirected,
  sharedPainter: fcQRadioButton_method_callback_sharedPainter,
  inputMethodEvent: fcQRadioButton_method_callback_inputMethodEvent,
  inputMethodQuery: fcQRadioButton_method_callback_inputMethodQuery,
  focusNextPrevChild: fcQRadioButton_method_callback_focusNextPrevChild,
  eventFilter: fcQRadioButton_method_callback_eventFilter,
  childEvent: fcQRadioButton_method_callback_childEvent,
  customEvent: fcQRadioButton_method_callback_customEvent,
  connectNotify: fcQRadioButton_method_callback_connectNotify,
  disconnectNotify: fcQRadioButton_method_callback_disconnectNotify,
)
proc create*(T: type gen_qradiobutton_types.QRadioButton,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQRadioButton) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRadioButton_new(addr(cQRadioButton_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qradiobutton_types.QRadioButton,
    inst: VirtualQRadioButton) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRadioButton_new2(addr(cQRadioButton_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qradiobutton_types.QRadioButton,
    text: openArray[char],
    inst: VirtualQRadioButton) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRadioButton_new3(addr(cQRadioButton_mvtbl), addr(inst[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))
  inst[].owned = true

proc create*(T: type gen_qradiobutton_types.QRadioButton,
    text: openArray[char], parent: gen_qwidget_types.QWidget,
    inst: VirtualQRadioButton) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRadioButton_new4(addr(cQRadioButton_mvtbl), addr(inst[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qradiobutton_types.QRadioButton): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRadioButton_staticMetaObject())
